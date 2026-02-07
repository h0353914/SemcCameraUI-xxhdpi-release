package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$FrontVideoCaptureAreaEventProcedure extends UserEventHandler$CaptureAreaEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$FrontVideoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$FrontVideoCaptureAreaEventProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        if (UserEventHandler.access$3200(this.this$0).isAutoReviewShowing()) {
            UserEventHandler.access$3200(this.this$0).hideAutoReview();
        } else if (UserEventHandler.access$4900(this.this$0)) {
            UserEventHandler.access$3400(this.this$0).sendEvent(UserEventHandler.access$5000(this.this$0), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$CaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doCancel() {
        if (!UserEventHandler$AngleActionHandler.access$2200(UserEventHandler.access$3700(this.this$0)) && UserEventHandler.access$4900(this.this$0)) {
            UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
        }
    }
}
