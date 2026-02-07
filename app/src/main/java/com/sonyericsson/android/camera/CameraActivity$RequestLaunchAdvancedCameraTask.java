package com.sonyericsson.android.camera;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$RequestLaunchAdvancedCameraTask implements Runnable {
    private static final String TAG = "RequestLaunchAdvancedCameraTask";
    private final LaunchCondition$ExtraOperation mExtraOperation;
    private final CapturingMode mRequestMode;
    private final String mUserSettingKeyName;
    final /* synthetic */ CameraActivity this$0;

    /* synthetic */ CameraActivity$RequestLaunchAdvancedCameraTask(CameraActivity cameraActivity, CapturingMode capturingMode, LaunchCondition$ExtraOperation launchCondition$ExtraOperation, String str, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity, capturingMode, launchCondition$ExtraOperation, str);
    }

    private CameraActivity$RequestLaunchAdvancedCameraTask(CameraActivity cameraActivity, CapturingMode capturingMode, LaunchCondition$ExtraOperation launchCondition$ExtraOperation, String str) {
        this.this$0 = cameraActivity;
        this.mRequestMode = capturingMode;
        this.mExtraOperation = launchCondition$ExtraOperation;
        this.mUserSettingKeyName = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        CameraActivity.access$3900(this.this$0, false);
        Intent intent = new Intent();
        intent.setClass(this.this$0.getApplicationContext(), CameraActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("com.sonyericsson.android.camera.extra.launchedByFastCapturing", true);
        if (CameraActivity$12.$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation[this.mExtraOperation.ordinal()] == 1) {
            intent.putExtra("com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen", true);
            intent.putExtra("com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogkey", this.mUserSettingKeyName);
        }
        switch (this.mRequestMode) {
            case SCENE_RECOGNITION:
                intent.setAction(CapturingMode.SCENE_RECOGNITION.getValue());
                break;
            case NORMAL:
                intent.setAction(CapturingMode.NORMAL.getValue());
                break;
            case FRONT_PHOTO:
                intent.setAction(CapturingMode.FRONT_PHOTO.getValue());
                break;
            case SUPERIOR_FRONT:
                intent.setAction("com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA");
                break;
            case VIDEO:
                intent.setAction("android.media.action.VIDEO_CAMERA");
                break;
            case FRONT_VIDEO:
                intent.setAction("com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA");
                break;
            case SLOW_MOTION:
                intent.setAction(CapturingMode.SLOW_MOTION.getValue());
                break;
            default:
                intent.setAction(CapturingMode.SCENE_RECOGNITION.getValue());
                break;
        }
        if (CommonUtility.isActivityAvailable(this.this$0.getApplicationContext(), intent)) {
            try {
                this.this$0.startActivity(intent, ActivityOptions.makeCustomAnimation(this.this$0, 0, 0).toBundle());
                this.this$0.overridePendingTransition(0, 0);
            } catch (ActivityNotFoundException unused) {
                if (CamLog.VERBOSE) {
                    CamLog.e(".onClick():[activity is not found error]");
                }
            }
        }
        this.this$0.requestSuspend();
    }
}
