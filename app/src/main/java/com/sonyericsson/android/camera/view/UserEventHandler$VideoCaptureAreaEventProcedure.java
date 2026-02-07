package com.sonyericsson.android.camera.view;

import android.graphics.Point;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$VideoCaptureAreaEventProcedure extends UserEventHandler$FrontVideoCaptureAreaEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$VideoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$VideoCaptureAreaEventProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$FrontVideoCaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        if (UserEventHandler.access$3200(this.this$0).isAutoReviewShowing()) {
            UserEventHandler.access$3200(this.this$0).hideAutoReview();
            return;
        }
        if (UserEventHandler$AngleActionHandler.access$2200(UserEventHandler.access$3700(this.this$0))) {
            return;
        }
        if (UserEventHandler.access$5100(this.this$0)) {
            setSelectedObjectPositionToDeviceAndViewFinder(point);
        }
        if (UserEventHandler.access$4900(this.this$0)) {
            UserEventHandler.access$3400(this.this$0).sendEvent(UserEventHandler.access$5000(this.this$0), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchAreaScaleReady() {
        UserEventHandler$AngleActionHandler.access$5200(UserEventHandler.access$3700(this.this$0));
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchAreaScaling(float f) {
        UserEventHandler$AngleActionHandler.access$5300(UserEventHandler.access$3700(this.this$0), f);
    }
}
