package com.sonyericsson.android.camera.parameter;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor;
import com.sonyericsson.android.camera.setting.UserSettingsLoader;
import com.sonyericsson.android.camera.setting.UserSettingsLoader$OnLoadCompletedListener;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.storage.Storage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map$Entry;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class UserSettingsLoaderImpl implements UserSettingsLoader {
    private static final String FINGERPRINT_KEY = "android.os.Build.FINGERPRINT";
    private static final String THREAD_NAME = "SettingLoadTask";
    private final Context mContext;
    private final ExecutorService mSetupExecutor;
    private final SharedPreferencesAccessor mSharedPrefsAccessor;
    private final Storage mStorage;
    private final Map<CapturingMode, Parameters> mParametersEntries = new HashMap();
    private final Map<CapturingMode, Parameters> mMigrateParametersEntries = new HashMap();
    private final LinkedList<UserSettingsLoader$OnLoadCompletedListener> mListeners = new LinkedList<>();
    private final Object mEntryLock = new Object();
    private boolean mIsCompleted = false;
    private Future<?> mLoadTaskFuture = null;
    private final ModeIndependentParams mCommonParameters = new ModeIndependentParams();

    static /* synthetic */ boolean access$000(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mIsCompleted;
    }

    static /* synthetic */ boolean access$002(UserSettingsLoaderImpl userSettingsLoaderImpl, boolean z) {
        userSettingsLoaderImpl.mIsCompleted = z;
        return z;
    }

    static /* synthetic */ Context access$100(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mContext;
    }

    static /* synthetic */ Object access$1100(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mEntryLock;
    }

    static /* synthetic */ Storage access$200(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mStorage;
    }

    static /* synthetic */ void access$300(UserSettingsLoaderImpl userSettingsLoaderImpl, Context context, Storage storage) {
        userSettingsLoaderImpl.applyDefaultParameters(context, storage);
    }

    static /* synthetic */ Map access$400(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mMigrateParametersEntries;
    }

    static /* synthetic */ ModeIndependentParams access$500(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mCommonParameters;
    }

    static /* synthetic */ SharedPreferencesAccessor access$600(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mSharedPrefsAccessor;
    }

    static /* synthetic */ Map access$700(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mParametersEntries;
    }

    static /* synthetic */ void access$800(UserSettingsLoaderImpl userSettingsLoaderImpl, Map map) {
        userSettingsLoaderImpl.loadInternal(map);
    }

    static /* synthetic */ LinkedList access$900(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        return userSettingsLoaderImpl.mListeners;
    }

    public UserSettingsLoaderImpl(Context context, Storage storage) {
        this.mContext = context;
        this.mStorage = storage;
        this.mCommonParameters.clear(storage);
        this.mSharedPrefsAccessor = new SharedPreferencesAccessor(context, "com.sonyericsson.android.camera.shared_preferences");
        this.mSetupExecutor = ThreadUtil.buildExecutor("SettingLoadTask");
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public synchronized void load() {
        if (this.mLoadTaskFuture != null && !this.mLoadTaskFuture.isDone()) {
            CamLog.d("duplicated load call");
        } else {
            this.mLoadTaskFuture = this.mSetupExecutor.submit(new UserSettingsLoaderImpl$LoadTask(this, null));
        }
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public synchronized void save(Map<CapturingMode, Parameters> map, CapturingMode capturingMode) {
        saveInternal(map, capturingMode, this.mParametersEntries);
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public synchronized void release() {
        this.mListeners.clear();
        this.mMigrateParametersEntries.clear();
        this.mParametersEntries.clear();
        this.mCommonParameters.clear(this.mStorage);
        this.mIsCompleted = false;
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public void clearMasterData() {
        this.mSharedPrefsAccessor.clear(true);
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public Parameters getUserSettingParameters(Context context, CapturingMode capturingMode, Storage storage, Configurations configurations, boolean z, ModeIndependentParams modeIndependentParams, boolean z2) {
        CamLog.d("invoked");
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (!this.mParametersEntries.containsKey(capturingMode)) {
            synchronized (this.mEntryLock) {
                try {
                    this.mEntryLock.wait(5L);
                } catch (InterruptedException unused) {
                    CamLog.d("Interrupted to wait");
                }
            }
        }
        CamLog.d("getUserSettingParameters(): wait loading for " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
        return this.mParametersEntries.get(capturingMode).copy(context, capturingMode, configurations, storage, z, modeIndependentParams, z2);
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public SharedPreferencesAccessor getSharedPreferencesAccessor() {
        return this.mSharedPrefsAccessor;
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public synchronized void registerLoadCompletedListener(UserSettingsLoader$OnLoadCompletedListener userSettingsLoader$OnLoadCompletedListener) {
        if (userSettingsLoader$OnLoadCompletedListener != null) {
            this.mListeners.add(userSettingsLoader$OnLoadCompletedListener);
            if (this.mIsCompleted) {
                userSettingsLoader$OnLoadCompletedListener.onLoadCompleted();
            }
        }
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader
    public synchronized void unregisterLoadCompletedListener(UserSettingsLoader$OnLoadCompletedListener userSettingsLoader$OnLoadCompletedListener) {
        this.mListeners.remove(userSettingsLoader$OnLoadCompletedListener);
    }

    Map<CapturingMode, Parameters> loadMigrateParameters() {
        loadInternal(this.mMigrateParametersEntries);
        return this.mMigrateParametersEntries;
    }

    void saveMigrateParameters(Map<CapturingMode, Parameters> map, CapturingMode capturingMode) {
        saveInternal(map, capturingMode, this.mMigrateParametersEntries);
    }

    private void loadInternal(Map<CapturingMode, Parameters> map) {
        HashMap map2 = new HashMap();
        for (CapturingMode capturingMode : CapturingMode.getValidOptions()) {
            Parameters parametersCreate = Parameters.create(this.mContext, capturingMode, false, this.mCommonParameters);
            parametersCreate.prepareHolder(new Configurations(), this.mSharedPrefsAccessor, this.mStorage);
            map2.put(capturingMode, parametersCreate);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(UserSettingKey.values()));
        this.mSharedPrefsAccessor.readParameters(arrayList);
        for (Parameters parameters : map2.values()) {
            parameters.readSharedPrefs(this.mSharedPrefsAccessor);
            parameters.commit();
            map.put(parameters.capturingMode, parameters);
            notifyEntryReady();
        }
        map2.clear();
    }

    private void saveInternal(Map<CapturingMode, Parameters> map, CapturingMode capturingMode, Map<CapturingMode, Parameters> map2) {
        CapturingMode capturingMode2;
        for (Map$Entry<CapturingMode, Parameters> map$Entry : map.entrySet()) {
            if (map2.containsKey(map$Entry.getKey())) {
                ParameterUtil.copy(map$Entry.getValue().mHolders, map2.get(map$Entry.getKey()).mHolders);
            }
            if (map$Entry.getKey() == capturingMode) {
                this.mCommonParameters.setValues(map$Entry.getValue().mIndependentParams);
            }
        }
        for (Map$Entry<CapturingMode, Parameters> map$Entry2 : map2.entrySet()) {
            map$Entry2.getValue().mIndependentParams.setValues(this.mCommonParameters);
            map$Entry2.getValue().writeSharedPrefs(this.mSharedPrefsAccessor);
        }
        this.mSharedPrefsAccessor.writeParameters(false);
        if (PlatformCapability.isFrontCameraSupported() && !this.mSharedPrefsAccessor.getSharedPreferences().contains("FRONT_FAST")) {
            if (PlatformCapability.isSceneRecognitionSupported(CameraInfo$CameraId.FRONT)) {
                capturingMode2 = CapturingMode.SUPERIOR_FRONT;
            } else {
                capturingMode2 = CapturingMode.FRONT_PHOTO;
            }
            this.mSharedPrefsAccessor.writeString("FRONT_FAST", capturingMode2.name(), false);
        }
        this.mSharedPrefsAccessor.apply();
    }

    private void applyDefaultParameters(Context context, Storage storage) {
        Configurations configurations = new Configurations();
        SharedPreferencesAccessor sharedPreferencesAccessor = new SharedPreferencesAccessor(context, "com.sonyericsson.android.camera.shared_preferences");
        ModeIndependentParams modeIndependentParams = new ModeIndependentParams();
        Iterator<CapturingMode> it = CapturingMode.getValidOptions().iterator();
        while (it.hasNext()) {
            Parameters parametersCreate = Parameters.create(this.mContext, it.next(), false, modeIndependentParams);
            parametersCreate.prepareHolder(configurations, sharedPreferencesAccessor, storage);
            parametersCreate.writeSharedPrefs(sharedPreferencesAccessor);
        }
        sharedPreferencesAccessor.writeString("android.os.Build.FINGERPRINT", Build.FINGERPRINT, false);
        sharedPreferencesAccessor.writeParameters(false);
        sharedPreferencesAccessor.apply();
    }

    private void notifyEntryReady() {
        new Thread(new UserSettingsLoaderImpl$1(this)).start();
    }
}
