package com.sonyericsson.android.camera.controller;

import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

class ObjectTrackingManager$ObjectTrackingHandler extends Handler {
    private static final int MSG_TIMEOUT_INVISIBLE = 2;
    private static final int MSG_TIMEOUT_LOST = 1;
    private static final int TIMEOUT_INVISIBLE_MILLIS = 500;
    private static final int TIMEOUT_LOST_MILLIS = 3000;
    final /* synthetic */ ObjectTrackingManager this$0;

    private ObjectTrackingManager$ObjectTrackingHandler(ObjectTrackingManager objectTrackingManager) {
        this.this$0 = objectTrackingManager;
    }

    /* synthetic */ ObjectTrackingManager$ObjectTrackingHandler(ObjectTrackingManager objectTrackingManager, ObjectTrackingManager$1 objectTrackingManager$1) {
        this(objectTrackingManager);
    }

    public void startTimeoutCount() {
        sendEmptyMessageDelayed(1, 3000L);
        sendEmptyMessageDelayed(2, 500L);
    }

    public void stopTimeoutCount() {
        removeMessages(1);
        removeMessages(2);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (ObjectTrackingManager.access$700(this.this$0).isObjectTrackingRunning()) {
            boolean z = ObjectTrackingManager.access$300(this.this$0).getCurrentCaptureState() != StateMachine$CaptureState.STATE_PHOTO_AF_DONE;
            switch (message.what) {
                case 1:
                    this.this$0.stop();
                    if (z) {
                        ObjectTrackingManager.access$400(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
                    }
                    ObjectTrackingManager.access$300(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CLEAR_FOCUS, new Object[0]);
                    break;
                case 2:
                    if (z) {
                        ObjectTrackingManager.access$400(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_OBJECT_TRACKING_TIMEOUT, new Object[0]);
                    }
                    break;
            }
        }
    }
}
