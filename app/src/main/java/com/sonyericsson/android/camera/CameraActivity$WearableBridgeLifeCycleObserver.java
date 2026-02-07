package com.sonyericsson.android.camera;

import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$LifeCycleObserver;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$WearableBridgeLifeCycleObserver implements ObserveWearableInterface$LifeCycleObserver {
    final /* synthetic */ CameraActivity this$0;

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$LifeCycleObserver
    public void onPause() {
    }

    private CameraActivity$WearableBridgeLifeCycleObserver(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$WearableBridgeLifeCycleObserver(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$LifeCycleObserver
    public void onResume() {
        if (this.this$0.mStateMachine.canHandleWearableCaptureRequest()) {
            this.this$0.notifyStateIdleToWearable();
        } else {
            this.this$0.notifyStateBlockedToWearable();
        }
    }
}
