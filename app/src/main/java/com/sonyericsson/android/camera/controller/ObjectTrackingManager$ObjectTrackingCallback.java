package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingCallback;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

class ObjectTrackingManager$ObjectTrackingCallback implements CameraParameters$ObjectTrackingCallback {
    final /* synthetic */ ObjectTrackingManager this$0;

    private ObjectTrackingManager$ObjectTrackingCallback(ObjectTrackingManager objectTrackingManager) {
        this.this$0 = objectTrackingManager;
    }

    /* synthetic */ ObjectTrackingManager$ObjectTrackingCallback(ObjectTrackingManager objectTrackingManager, ObjectTrackingManager$1 objectTrackingManager$1) {
        this(objectTrackingManager);
    }

    @Override // com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingCallback
    public void onObjectTracked(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        if (this != ObjectTrackingManager.access$000(this.this$0)) {
            return;
        }
        if (cameraParameters$ObjectTrackingResult == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("onObjectTracked: result is null.");
                return;
            }
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onObjectTracked: lost: " + cameraParameters$ObjectTrackingResult.mIsLost + ", rect: " + cameraParameters$ObjectTrackingResult.mRectOfTrackedObject);
        }
        switch (ObjectTrackingManager.access$100(this.this$0)) {
            case STOPPED:
                return;
            case IDLE:
                if (cameraParameters$ObjectTrackingResult.mIsLost) {
                    ObjectTrackingManager.access$102(this.this$0, ObjectTrackingManager$State.LOST);
                } else {
                    ObjectTrackingManager.access$102(this.this$0, ObjectTrackingManager$State.TRACKING);
                }
                break;
            case LOST:
                if (cameraParameters$ObjectTrackingResult.mIsLost) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("onObjectTracked: ignore lost");
                        return;
                    }
                    return;
                }
                ObjectTrackingManager.access$102(this.this$0, ObjectTrackingManager$State.TRACKING);
                break;
                break;
            case TRACKING:
                if (cameraParameters$ObjectTrackingResult.mIsLost) {
                    ObjectTrackingManager.access$102(this.this$0, ObjectTrackingManager$State.LOST);
                }
                break;
        }
        if (cameraParameters$ObjectTrackingResult.mIsLost) {
            ObjectTrackingManager.access$200(this.this$0).startTimeoutCount();
            ObjectTrackingManager.access$300(this.this$0).onObjectLost(cameraParameters$ObjectTrackingResult);
            return;
        }
        ObjectTrackingManager.access$200(this.this$0).stopTimeoutCount();
        if (cameraParameters$ObjectTrackingResult.mRectOfTrackedObject.isEmpty()) {
            ObjectTrackingManager.access$400(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        } else {
            ObjectTrackingManager.access$300(this.this$0).onObjectTracked(cameraParameters$ObjectTrackingResult);
        }
    }
}
