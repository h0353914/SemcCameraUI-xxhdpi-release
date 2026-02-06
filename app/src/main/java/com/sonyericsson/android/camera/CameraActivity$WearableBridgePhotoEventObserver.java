package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$PhotoEventObserver;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;

class CameraActivity$WearableBridgePhotoEventObserver implements ObserveWearableInterface$PhotoEventObserver {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$WearableBridgePhotoEventObserver(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$WearableBridgePhotoEventObserver(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$PhotoEventObserver
    public void onPhotoCaptureRequested() {
        if (this.this$0.mStateMachine.canHandleWearableCaptureRequest()) {
            this.this$0.restartAutoPowerOffTimer();
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_READY, new Object[0]);
            this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE, new Object[0]);
            ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.WEARABLE);
            return;
        }
        WearableBridgeClient wearableBridge = this.this$0.getWearableBridge();
        if (wearableBridge != null) {
            wearableBridge.getPhotoStateNotifier().onCaptureFailed();
        }
    }
}
