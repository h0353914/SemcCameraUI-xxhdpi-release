package com.sonyericsson.android.camera.parameter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.os.Environment;
import android.util.Log;
import com.sonyericsson.android.camera.LaunchCondition$OneShotMode;
import com.sonyericsson.android.camera.configuration.IntentReader;
import com.sonyericsson.android.camera.configuration.IntentReader$VideoQualityConfigurations;
import com.sonyericsson.android.camera.configuration.ParameterCategory;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.TouchIntention;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.view.setting.SettingUi;
import com.sonyericsson.cameracommon.storage.Storage;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Objects;

class CameraSettingsMigrator {
    private static final String TAG = "cameramigrator";
    private static final boolean DEBUG_ENABLED = Log.isLoggable("cameramigrator", 3);
    private static Map<CapturingMode, List<UserSettingKey>> SETTINGS = Collections.unmodifiableMap(new CameraSettingsMigrator$1());
    private static List<UserSettingKey> COMMON_SETTINGS = Collections.unmodifiableList(Arrays.asList(UserSettingKey.FLASH, UserSettingKey.PHOTO_LIGHT, UserSettingKey.DISPLAY_FLASH, UserSettingKey.FRONT_ANGLE, UserSettingKey.GEO_TAG, UserSettingKey.CAMERA_KEY, UserSettingKey.TOUCH_CAPTURE, UserSettingKey.GRID_LINE, UserSettingKey.SIDE_SENSE, UserSettingKey.AUTO_REVIEW, UserSettingKey.DISTORTION_CORRECTION, UserSettingKey.VOLUME_KEY, UserSettingKey.SHUTTER_SOUND, UserSettingKey.DESTINATION_TO_SAVE, UserSettingKey.PREDICTIVE_LAUNCH, UserSettingKey.FAST_CAPTURE));

    CameraSettingsMigrator() {
    }

    @SuppressLint({"ApplySharedPref"})
    static void migrate(Context context, Storage storage, UserSettingsLoaderImpl userSettingsLoaderImpl) {
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ camera settings migration");
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ backup shared preferences");
        }
        backupSharedPrefs(context);
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- backup shared preferences");
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ cache all camera settings");
        }
        Map<String, ?> all = getSharedPrefs(context, true).getAll();
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- cache all camera settings");
        }
        if (all.isEmpty()) {
            if (DEBUG_ENABLED) {
                Log.w("cameramigrator", "ignore migration since legacy camera settings is empty");
                return;
            }
            return;
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ cleanup shared preferences");
        }
        SharedPreferences sharedPrefs = getSharedPrefs(context, false);
        sharedPrefs.edit().clear().commit();
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- cleanup shared preferences");
        }
        if (context.checkSelfPermission("android.permission.CAMERA") != 0) {
            if (DEBUG_ENABLED) {
                Log.w("cameramigrator", "ignore migration since not have camera permission");
                return;
            }
            return;
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ setup camera parameter manager");
        }
        IntentReader$VideoQualityConfigurations videoQualityConfigurations = new IntentReader().getVideoQualityConfigurations(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER"));
        UserSettingManager userSettingManager = new UserSettingManager(context, storage);
        userSettingManager.prepare(context, LaunchCondition$OneShotMode.NONE, null, videoQualityConfigurations, null);
        Map<CapturingMode, Parameters> mapLoadMigrationData = loadMigrationData(CapturingMode.NORMAL, userSettingManager, userSettingsLoaderImpl);
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- setup camera parameter manager");
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ migrate capturing mode settings");
        }
        for (CapturingMode capturingMode : CapturingMode.getValidOptions()) {
            if (DEBUG_ENABLED) {
                Log.d("cameramigrator", "+ migrate " + capturingMode.toString().toLowerCase() + " settings");
            }
            userSettingManager.changeCapturingMode(capturingMode);
            userSettingManager.applyCapturingMode();
            String strCreateParameterKeyPrefixForCapturingMode = createParameterKeyPrefixForCapturingMode(capturingMode);
            if (DEBUG_ENABLED) {
                for (Map$Entry<UserSettingKey, UserSettingValueHolder<?>> map$Entry : userSettingManager.getParameters().getHolder().entrySet()) {
                    map2.put(strCreateParameterKeyPrefixForCapturingMode + map$Entry.getKey(), map$Entry.getValue().toString());
                }
            }
            ArrayList<UserSettingKey> arrayList2 = new ArrayList();
            arrayList2.addAll(SETTINGS.get(capturingMode));
            arrayList2.addAll(COMMON_SETTINGS);
            for (UserSettingKey userSettingKey : arrayList2) {
                String str = strCreateParameterKeyPrefixForCapturingMode + userSettingKey;
                String string = Objects.toString(all.get(str), "NO_VALUE");
                if ("NO_VALUE".equals(string)) {
                    if (DEBUG_ENABLED) {
                        map.put(str, "ignore-null-legacy-value");
                    }
                } else {
                    UserSettingValue userSettingValueConvertUnsupportedValue = parse(string).get();
                    if (userSettingValueConvertUnsupportedValue == null) {
                        if (DEBUG_ENABLED) {
                            map.put(str, "ignore-null-current-value");
                        }
                    } else if (!SettingUi.isSelectableValues(userSettingKey, userSettingManager.getParameters(), userSettingValueConvertUnsupportedValue)) {
                        if (DEBUG_ENABLED) {
                            map.put(str, "ignore-unselectable-current-value");
                        }
                    } else if (!isSupported(userSettingManager, userSettingValueConvertUnsupportedValue) && (userSettingValueConvertUnsupportedValue = convertUnsupportedValue(userSettingManager, userSettingValueConvertUnsupportedValue, capturingMode)) == null) {
                        if (DEBUG_ENABLED) {
                            map.put(str, "ignore-unsupported-current-value");
                        }
                    } else {
                        if (!arrayList.contains(userSettingValueConvertUnsupportedValue.getKey())) {
                            arrayList.add(userSettingValueConvertUnsupportedValue.getKey());
                        }
                        if (capturingMode == CapturingMode.NORMAL && userSettingValueConvertUnsupportedValue == ObjectTracking.ON) {
                            userSettingManager.set(TouchIntention.OBJECT_TRACKING);
                        }
                        userSettingManager.set(userSettingValueConvertUnsupportedValue);
                        if (DEBUG_ENABLED) {
                            map.put(str, "apply-selectable-supported-current-value");
                        }
                    }
                }
            }
            if (DEBUG_ENABLED) {
                Log.d("cameramigrator", "- migrate " + capturingMode.toString().toLowerCase() + " settings");
            }
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- migrate capturing mode settings");
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ release camera parameter manager");
        }
        userSettingsLoaderImpl.saveMigrateParameters(mapLoadMigrationData, CapturingMode.SCENE_RECOGNITION);
        userSettingManager.release();
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- release camera parameter manager");
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ migrate non-capturing mode settings");
        }
        if (!migrateOtherSettingsToSharedPrefs(all, sharedPrefs) && DEBUG_ENABLED) {
            Log.d("cameramigrator", "- failed to write non-capturing mode settings");
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- migrate non-capturing mode settings");
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "+ generate camera settings migration report");
            createMigrationReport(all, map2, Collections.unmodifiableMap(sharedPrefs.getAll()), map);
            Log.d("cameramigrator", "- generate camera settings migration report");
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "- camera settings migration");
        }
    }

    private static Map<CapturingMode, Parameters> loadMigrationData(CapturingMode capturingMode, UserSettingManager userSettingManager, UserSettingsLoaderImpl userSettingsLoaderImpl) {
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "loadMigrationDataSync() E");
        }
        Map<CapturingMode, Parameters> mapLoadMigrateParameters = userSettingsLoaderImpl.loadMigrateParameters();
        userSettingManager.replaceParameterEntries(mapLoadMigrateParameters);
        for (Parameters parameters : mapLoadMigrateParameters.values()) {
            for (UserSettingKey userSettingKey : UserSettingKey.values()) {
                if (!userSettingManager.isNeededToLoad(userSettingKey, LaunchCondition$OneShotMode.NONE)) {
                    parameters.mHolders.remove(userSettingKey);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Parameters parameters2 : mapLoadMigrateParameters.values()) {
            parameters2.updatePhotoLight();
            arrayList.add(parameters2);
        }
        userSettingManager.setDefaultToNonExistentResolution(arrayList);
        userSettingManager.setDefaultToNonExistentVideoSize(arrayList);
        userSettingManager.setDefaultToNonExistentVideoShutterTrigger(arrayList);
        userSettingManager.changeCapturingMode(capturingMode);
        for (Parameters parameters3 : mapLoadMigrateParameters.values()) {
            if (parameters3.capturingMode.getType() == 2) {
                userSettingManager.setupVideoOption(mapLoadMigrateParameters.get(parameters3.capturingMode));
            }
        }
        Iterator<Parameters> it = mapLoadMigrateParameters.values().iterator();
        while (it.hasNext()) {
            it.next().commit();
        }
        if (DEBUG_ENABLED) {
            Log.d("cameramigrator", "loadMigrationDataSync() X");
        }
        return mapLoadMigrateParameters;
    }

    private static String createParameterKeyPrefixForCapturingMode(CapturingMode capturingMode) {
        return ParameterCategory.CAPTURING_MODE + '_' + capturingMode + "_PARAMS_";
    }

    private static SharedPreferences getSharedPrefs(Context context, boolean z) {
        return context.getSharedPreferences(z ? "com.sonyericsson.android.camera.shared_preferences_legacy" : "com.sonyericsson.android.camera.shared_preferences", 0);
    }

    private static File getSharedPrefsFile(Context context, boolean z) {
        return new File(new File(context.getDataDir(), "shared_prefs"), (z ? "com.sonyericsson.android.camera.shared_preferences_legacy" : "com.sonyericsson.android.camera.shared_preferences") + ".xml");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[Catch: all -> 0x0048, Throwable -> 0x004a, SYNTHETIC, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0014, B:11:0x0025, B:27:0x0044, B:26:0x0040, B:28:0x0047), top: B:47:0x0014, outer: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void backupSharedPrefs(Context context) {
        Throwable th;
        File sharedPrefsFile = getSharedPrefsFile(context, false);
        File sharedPrefsFile2 = getSharedPrefsFile(context, true);
        byte[] bArr = new byte[4096];
        try {
            FileInputStream fileInputStream = new FileInputStream(sharedPrefsFile);
            Throwable th2 = null;
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(sharedPrefsFile2);
                while (true) {
                    try {
                        int i = fileInputStream.read(bArr);
                        if (i < 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        th = null;
                        if (fileOutputStream != null) {
                        }
                    }
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (Throwable th4) {
                if (fileInputStream != null) {
                    if (0 != 0) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th5) {
                            th2.addSuppressed(th5);
                        }
                    } else {
                        fileInputStream.close();
                    }
                }
                throw th4;
            }
        } catch (FileNotFoundException e) {
            Log.e("cameramigrator", "backup shared preferences failed: " + e);
        } catch (IOException e2) {
            Log.d("cameramigrator", "backup shared preferences failed: " + e2);
        }
    }

    private static boolean migrateOtherSettingsToSharedPrefs(Map<String, ?> map, SharedPreferences sharedPreferences) {
        SharedPreferences$Editor sharedPreferences$EditorEdit = sharedPreferences.edit();
        for (Map$Entry<String, ?> map$Entry : map.entrySet()) {
            String key = map$Entry.getKey();
            String string = Objects.toString(map$Entry.getValue(), "NO_VALUE");
            if (!"NO_VALUE".equals(string) && !key.startsWith("CAPTURING_MODE_")) {
                byte b = -1;
                if (key.hashCode() == 2111842220 && key.equals("KEY_LAST_MODE")) {
                    b = 0;
                }
                if (b == 0) {
                    sharedPreferences$EditorEdit.putString(key, string);
                }
            }
        }
        return sharedPreferences$EditorEdit.commit();
    }

    private static boolean isSupported(UserSettings userSettings, UserSettingValue userSettingValue) {
        UserSettingValue[] options = userSettings.getOptions(userSettingValue.getKey());
        if (options == null || options.length < 1) {
            return false;
        }
        return Arrays.asList(options).contains(userSettingValue);
    }

    private static UserSettingValueHolder<UserSettingValue> parse(String str) {
        UserSettingValueHolder<UserSettingValue> userSettingValueHolder = new UserSettingValueHolder<>(null);
        userSettingValueHolder.parseValueString(str);
        return userSettingValueHolder;
    }

    private static void createMigrationReport(Map<String, ?> map, Map<String, ?> map2, Map<String, ?> map3, Map<String, String> map4) {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(Environment.getExternalStorageDirectory(), "migration_report.xls")));
            Throwable th = null;
            try {
                try {
                    bufferedWriter.write("KEY\tLEGACY_VALUE\tDEFAULT_VALUE\tFINAL_VALUE\tSTATUS");
                    bufferedWriter.newLine();
                    HashSet hashSet = new HashSet();
                    hashSet.addAll(map.keySet());
                    hashSet.addAll(map2.keySet());
                    hashSet.addAll(map3.keySet());
                    ArrayList<String> arrayList = new ArrayList(hashSet);
                    Collections.sort(arrayList);
                    for (String str : arrayList) {
                        String string = Objects.toString(map.get(str), "NO_VALUE");
                        String string2 = Objects.toString(map2.get(str), "NO_VALUE");
                        String string3 = Objects.toString(map3.get(str), "NO_VALUE");
                        String string4 = Objects.toString(map4.get(str), "NO_VALUE");
                        if (str.startsWith("CAPTURING_MODE_")) {
                            string = parse(string).toString();
                            string3 = parse(string3).toString();
                        }
                        bufferedWriter.write(String.format("%s\t%s\t%s\t%s\t%s", str, string, string2, string3, string4));
                        bufferedWriter.newLine();
                    }
                    bufferedWriter.flush();
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } finally {
            }
        } catch (IOException e) {
            Log.e("cameramigrator", "create migration report failed: " + e);
        }
    }

    private static UserSettingValue convertUnsupportedValue(UserSettingManager userSettingManager, UserSettingValue userSettingValue, CapturingMode capturingMode) {
        if (CameraSettingsMigrator$2.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingValue.getKey().ordinal()] != 1 || capturingMode != CapturingMode.NORMAL || userSettingValue != Metering.TOUCH) {
            return null;
        }
        userSettingManager.set(TouchIntention.FOCUS_AND_EXPOSURE);
        return Metering.getDefaultValue(capturingMode);
    }
}
