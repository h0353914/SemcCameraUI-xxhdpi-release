package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;

class UserEventHandler$CaptureButtonProcedure extends UserEventHandler$TouchEventProcedure {
    private boolean mIsBurst;
    private boolean mIsTouched;
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$CaptureButtonProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
        this.mIsTouched = false;
        this.mIsBurst = false;
    }

    /* synthetic */ UserEventHandler$CaptureButtonProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchDown() {
        this.mIsTouched = true;
        this.mIsBurst = false;
        UserEventHandler.access$3200(this.this$0).clearCanceledSideTouchEventIcons();
        UserEventHandler.access$3300(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        PerfLog.CAPTURE_BUTTON_TAP.transit();
        this.mIsTouched = false;
        if (UserEventHandler.access$3200(this.this$0).isSwitchingAnimationProgress()) {
            return;
        }
        UserEventHandler.access$3200(this.this$0).closeDialogs();
        ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.CAPTURE_BUTTON);
        if (this.mIsBurst) {
            UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
        } else {
            UserEventHandler.access$3400(this.this$0).sendEvent(UserEventHandler.access$3500(this.this$0, false), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doCancel() {
        if (this.mIsTouched) {
            this.mIsTouched = false;
            UserEventHandler.access$3200(this.this$0).clearBurstShootingRejectedReason();
            UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doLongClick(Point point) {
        if (this.mIsTouched) {
            this.mIsBurst = UserEventHandler.access$3600(this.this$0);
        }
    }
}
