package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DisplayFlash;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.setting.UserSettings;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$PostDeviceInitializationTask implements Runnable {
    private final CameraActivity mActivity;
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$PostDeviceInitializationTask(CameraActivity cameraActivity, CameraActivity cameraActivity2) {
        this.this$0 = cameraActivity;
        this.mActivity = cameraActivity2;
        CameraActivity.access$3102(cameraActivity, true);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mStateMachine == null || CameraActivity.access$700(this.this$0) == null || CameraActivity.access$2900(this.this$0) == null) {
            retry();
            return;
        }
        if (CameraActivity.access$700(this.this$0).isPreScanOnGoing() || CameraActivity.access$700(this.this$0).isPreCaptureOnGoing()) {
            retry();
            return;
        }
        if (this.this$0.mStateMachine.canHandleAsynchronizedTask()) {
            UserSettings userSetting = this.this$0.mStateMachine.getUserSetting();
            if (((CapturingMode) userSetting.get(UserSettingKey.CAPTURING_MODE)).isVideo()) {
                CameraActivity.access$700(this.this$0).setTorchAndCommit(((PhotoLight) userSetting.get(UserSettingKey.PHOTO_LIGHT)).getBooleanValue());
            } else if (((CapturingMode) userSetting.get(UserSettingKey.CAPTURING_MODE)).isFront()) {
                CameraActivity.access$700(this.this$0).setDisplayFlashModeAndCommit((DisplayFlash) userSetting.get(UserSettingKey.DISPLAY_FLASH));
            } else {
                CameraActivity.access$700(this.this$0).setFlashModeAndCommit((Flash) userSetting.get(UserSettingKey.FLASH));
            }
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, true);
            if (CameraActivity.access$3200(this.this$0) != null) {
                CameraActivity.access$3200(this.this$0).notifyStatus();
            }
            CameraActivity.access$3302(this.this$0, new CameraActivity$LazyInitializationTask(this.this$0));
            CameraActivity.access$3400(this.this$0, CameraActivity.access$3300(this.this$0));
            return;
        }
        retry();
    }

    private void retry() {
        this.this$0.postDelayedEvent(this, 100L);
    }
}
