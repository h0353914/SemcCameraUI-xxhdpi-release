package com.sonyericsson.android.camera.controller.launcher;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.net.Uri;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.ExternalCameraAppSetting;
import com.sonyericsson.android.camera.ExternalCameraAppSetting$ShareSettingCategory;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.album.AlbumLauncher;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.SignatureUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.storage.SavingRequest;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.HashMap;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
public final class ApplicationLauncher {
    private static String ACTION_EDIT_HIGH_FRAME_RATE = "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR";
    public static final int BOKEH_AND_MONOCHROME = 3;
    public static final int BOKEH_ONLY = 1;
    private static final String DUAL_EFFECT_CLASS = "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity";
    private static final String DUAL_EFFECT_LAUNCH_MODE_BOKEH = "bokeh";
    private static final String DUAL_EFFECT_LAUNCH_MODE_CAMERA = "camera";
    private static final String DUAL_EFFECT_LAUNCH_MODE_KEY = "effect_mode";
    private static final String DUAL_EFFECT_LAUNCH_MODE_VIDEO = "video";
    private static final String DUAL_EFFECT_META_DATA = "com.sonymobile.addoncamera.dualcameraeffect.support_feature";
    private static final String DUAL_EFFECT_PACKAGE = "com.sonymobile.addoncamera.dualcameraeffect";
    public static final int MONOCHROME_ONLY = 2;
    private static final String PORTRAIT_SELFIE_CLASS = "com.arcsoft.camera.CameraActivity";
    private static final String PORTRAIT_SELFIE_PACKAGE = "com.sonymobile.addoncamera.portraitselfie";
    private static final String PORTRAIT_SELFIE_WIDE_ZOOM_TARGET_RATIO = "com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO";
    public static final String TAG = "ApplicationLauncher";

    private ApplicationLauncher() {
    }

    public static void launchAlbum(Activity activity, String str, Uri uri, int i, int i2) {
        AlbumLauncher.launchAlbum(activity, uri, str, i, i2 == 2);
    }

    public static void launchAlbum(Activity activity, String str, Uri uri, int i, int i2, boolean z) {
        AlbumLauncher.launchAlbum(activity, uri, str, i, i2 == 2, z);
    }

    public static void launchLocationSourceSettings(Activity activity) {
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            try {
                activity.startActivity(intent);
                if (CamLog.VERBOSE) {
                    CamLog.d("ApplicationLauncher", "launchLocationSourceSettings: " + intent);
                }
            } catch (ActivityNotFoundException e) {
                CamLog.e("launchLocationSourceSettings: failed.", e);
            }
        }
    }

    public static void launchSideSenseSettings(Activity activity) {
        Intent intent = new Intent("com.sonymobile.sidesenseapp.action.LAUNCH_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            try {
                activity.startActivity(intent);
                if (CamLog.VERBOSE) {
                    CamLog.d("ApplicationLauncher", "launchSideSenseSettings: " + intent);
                }
            } catch (ActivityNotFoundException e) {
                CamLog.e("launchSideSenseSettings: failed.", e);
            }
        }
    }

    public static boolean isEditorAvailable(Context context, Uri uri, String str) {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setDataAndType(uri, str);
        intent.setFlags(1);
        return CommonUtility.isActivityAvailable(context, intent);
    }

    public static boolean launchVideoEditor(Activity activity, StoreDataResult storeDataResult) {
        try {
            Uri uri = storeDataResult.uri;
            SavingRequest savingRequest = storeDataResult.savingRequest;
            String str = savingRequest != null ? savingRequest.common.mimeType : null;
            if (!"video/mp4".equals(str) || !isEditorAvailable(activity, uri, savingRequest.common.mimeType)) {
                return false;
            }
            ActivityOptions activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(activity, 2130771983, 2130771984);
            Intent intent = new Intent(ACTION_EDIT_HIGH_FRAME_RATE);
            intent.setDataAndType(uri, str);
            intent.setFlags(3);
            if (!CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
                return false;
            }
            activity.startActivityForResult(intent, 14, activityOptionsMakeCustomAnimation.toBundle());
            return true;
        } catch (ActivityNotFoundException e) {
            CamLog.e("openReviewWindow: failed.", e);
            return false;
        }
    }

    private static Intent getDualCameraEffectIntent(int i, CapturingMode capturingMode) {
        Intent intent = new Intent();
        intent.setClassName("com.sonymobile.addoncamera.dualcameraeffect", "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity");
        if (i == 16) {
            intent.putExtra("effect_mode", "bokeh");
        } else if (i == 17) {
            if (capturingMode == CapturingMode.VIDEO) {
                intent.putExtra("effect_mode", "video");
            } else {
                intent.putExtra("effect_mode", "camera");
            }
        }
        return intent;
    }

    private static Intent getPortraitSelfieIntent(CameraActivity cameraActivity, UserSettings userSettings) {
        Intent intent = new Intent();
        intent.setClassName("com.sonymobile.addoncamera.portraitselfie", "com.arcsoft.camera.CameraActivity");
        if (PlatformCapability.isPrepared()) {
            intent.putExtra("com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO", PlatformCapability.getWideZoomTargetRatio(CameraInfo$CameraId.FRONT));
        } else {
            CamLog.i("Platform capability is not prepared. Set 1.0 as default to PORTRAIT_SELFIE_WIDE_ZOOM_TARGET_RATIO");
            intent.putExtra("com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO", 1.0f);
        }
        return intent;
    }

    public static boolean isPortraitSelfieAvailable(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.sonymobile.addoncamera.portraitselfie", "com.arcsoft.camera.CameraActivity");
        if (context.getPackageManager().resolveActivity(intent, 65536) == null) {
            return false;
        }
        return SignatureUtil.isAvailable(context, "com.sonymobile.addoncamera.portraitselfie");
    }

    public static boolean isBokehSupported() {
        if (PlatformCapability.isHighSensitivityFusionSupported(CameraInfo$CameraId.BACK)) {
            try {
                int i = CameraApplication.getContext().getPackageManager().getActivityInfo(new ComponentName("com.sonymobile.addoncamera.dualcameraeffect", "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"), 128).metaData.getInt("com.sonymobile.addoncamera.dualcameraeffect.support_feature", 0);
                if (i == 1 || i == 3) {
                    return true;
                }
            } catch (PackageManager$NameNotFoundException unused) {
                CamLog.e("ApplicationLauncher", "DualEffect Component : com.sonymobile.addoncamera.dualcameraeffect Not Found");
            }
        }
        return false;
    }

    public static boolean isMonochromeSupported() {
        if (PlatformCapability.isHighSensitivityFusionSupported(CameraInfo$CameraId.BACK)) {
            try {
                switch (CameraApplication.getContext().getPackageManager().getActivityInfo(new ComponentName("com.sonymobile.addoncamera.dualcameraeffect", "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"), 128).metaData.getInt("com.sonymobile.addoncamera.dualcameraeffect.support_feature", 0)) {
                }
                return true;
            } catch (PackageManager$NameNotFoundException unused) {
                CamLog.e("ApplicationLauncher", "DualEffect Component : com.sonymobile.addoncamera.dualcameraeffect Not Found");
            }
        }
        return false;
    }

    public static void launchExternalCamera(CameraActivity cameraActivity, int i, UserSettings userSettings, CapturingMode capturingMode, boolean z) {
        ExternalCameraAppSetting$ShareSettingCategory externalCameraAppSetting$ShareSettingCategory;
        Intent dualCameraEffectIntent;
        Object intentValue;
        HashMap map = new HashMap();
        map.put(ExternalCameraAppSetting.DATA_STORAGE.intentKey, "internal");
        switch (i) {
            case 16:
                externalCameraAppSetting$ShareSettingCategory = ExternalCameraAppSetting$ShareSettingCategory.PHOTO;
                dualCameraEffectIntent = getDualCameraEffectIntent(i, capturingMode);
                break;
            case 17:
                dualCameraEffectIntent = getDualCameraEffectIntent(i, capturingMode);
                externalCameraAppSetting$ShareSettingCategory = capturingMode == CapturingMode.VIDEO ? ExternalCameraAppSetting$ShareSettingCategory.VIDEO : ExternalCameraAppSetting$ShareSettingCategory.PHOTO;
                break;
            case 18:
                externalCameraAppSetting$ShareSettingCategory = ExternalCameraAppSetting$ShareSettingCategory.PHOTO;
                dualCameraEffectIntent = getPortraitSelfieIntent(cameraActivity, userSettings);
                break;
            default:
                throw new RuntimeException("The request code '" + i + "' is incorrect");
        }
        for (ExternalCameraAppSetting externalCameraAppSetting : ExternalCameraAppSetting.values()) {
            if (!map.containsKey(externalCameraAppSetting.intentKey) && externalCameraAppSetting.isShared(externalCameraAppSetting$ShareSettingCategory)) {
                if (i == 16 || i == 17) {
                    intentValue = externalCameraAppSetting.toIntentValue(userSettings.get(capturingMode, externalCameraAppSetting.key));
                } else {
                    intentValue = externalCameraAppSetting.toIntentValue(userSettings.get(externalCameraAppSetting.key));
                }
                if (intentValue.getClass().equals(Boolean.class)) {
                    dualCameraEffectIntent.putExtra(externalCameraAppSetting.intentKey, ((Boolean) intentValue).booleanValue());
                } else if (intentValue.getClass().equals(String.class)) {
                    dualCameraEffectIntent.putExtra(externalCameraAppSetting.intentKey, (String) intentValue);
                } else {
                    throw new RuntimeException("One of the external app values was neither a boolean nor a String. It was a " + intentValue.getClass() + ".");
                }
            }
        }
        if (!map.isEmpty()) {
            for (Map$Entry map$Entry : map.entrySet()) {
                if (map$Entry.getValue().getClass().equals(Boolean.class)) {
                    dualCameraEffectIntent.putExtra((String) map$Entry.getKey(), ((Boolean) map$Entry.getValue()).booleanValue());
                } else if (map$Entry.getValue().getClass().equals(String.class)) {
                    dualCameraEffectIntent.putExtra((String) map$Entry.getKey(), (String) map$Entry.getValue());
                } else {
                    throw new RuntimeException("One of the Force settings values was neither a boolean nor a String. It was a " + map$Entry.getClass() + ".");
                }
            }
        }
        if (CamLog.DEBUG) {
            CamLog.d("Launch external camera application");
            CamLog.d("  action:" + dualCameraEffectIntent.getAction());
            CamLog.d("  component:" + dualCameraEffectIntent.getComponent());
            CamLog.d("  extra:");
            for (String str : dualCameraEffectIntent.getExtras().keySet()) {
                CamLog.d("    " + str + ":" + dualCameraEffectIntent.getExtras().get(str));
            }
        }
        if (z) {
            cameraActivity.startActivityForResult(dualCameraEffectIntent, i);
        } else {
            cameraActivity.startActivity(dualCameraEffectIntent);
        }
        cameraActivity.overridePendingTransition(0, 0);
    }
}
