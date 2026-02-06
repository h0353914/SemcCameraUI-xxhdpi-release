package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.cameracommon.focusview.FocusRectangles$FocusSetType;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;

class UserEventHandler$FrontPhotoCaptureAreaEventProcedure extends UserEventHandler$CaptureAreaEventProcedure {
    protected boolean mIsBurst;
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$FrontPhotoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
        this.mIsBurst = false;
    }

    /* synthetic */ UserEventHandler$FrontPhotoCaptureAreaEventProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchDown() {
        this.mIsBurst = false;
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        if (UserEventHandler.access$3200(this.this$0).isFrontAngleChanging()) {
            return;
        }
        if (UserEventHandler.access$3200(this.this$0).isAutoReviewShowing()) {
            UserEventHandler.access$3200(this.this$0).hideAutoReview();
            return;
        }
        if (UserEventHandler.access$3200(this.this$0).canFocusRectanglesBeUpdated()) {
            if (UserEventHandler.access$4900(this.this$0)) {
                if (UserEventHandler.access$3200(this.this$0).isSwitchingAnimationProgress()) {
                    return;
                }
                UserEventHandler.access$3400(this.this$0).sendEvent(UserEventHandler.access$3500(this.this$0, false), new Object[0]);
                ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.TOUCH_CAPTURE);
                return;
            }
            if (UserEventHandler.access$3900(this.this$0)) {
                setFocusPositionToDeviceAndViewFinder(point, FocusRectangles$FocusSetType.FIRST);
                setFocusPositionToDeviceAndViewFinder(point, FocusRectangles$FocusSetType.RELEASE);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$CaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doCancel() {
        if (UserEventHandler$AngleActionHandler.access$2200(UserEventHandler.access$3700(this.this$0))) {
            return;
        }
        UserEventHandler.access$3200(this.this$0).clearBurstShootingRejectedReason();
        UserEventHandler.access$3400(this.this$0).sendEvent((!UserEventHandler.access$3200(this.this$0).isTouchFocus() || this.mIsBurst) ? StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL : StateMachine$TransitterEvent.EVENT_CLEAR_FOCUS, new Object[0]);
        this.mIsBurst = false;
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doLongClick(Point point) {
        if (!UserEventHandler.access$3200(this.this$0).isSwitchingAnimationProgress() && UserEventHandler.access$4900(this.this$0)) {
            if (UserEventHandler.access$5500(this.this$0)) {
                if (UserEventHandler.access$5600(this.this$0)) {
                    UserEventHandler.access$3200(this.this$0).hideAutoReview();
                    if (UserEventHandler.access$5100(this.this$0)) {
                        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED, point, UserEventHandler.access$3200(this.this$0).getPosition(point));
                    } else {
                        setFocusPositionToDeviceAndViewFinder(point, FocusRectangles$FocusSetType.FIRST);
                        setFocusPositionToDeviceAndViewFinder(point, FocusRectangles$FocusSetType.RELEASE);
                    }
                    this.mIsBurst = true;
                    UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_BURST, new Object[0]);
                    return;
                }
                UserEventHandler.access$5800(this.this$0, UserEventHandler.access$5700(this.this$0));
                return;
            }
            if (UserEventHandler.access$5600(this.this$0)) {
                return;
            }
            UserEventHandler.access$5800(this.this$0, UserEventHandler.access$5700(this.this$0));
        }
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doClick(Point point) {
        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED, point, UserEventHandler.access$3200(this.this$0).getPosition(point));
        if (!UserEventHandler.access$4900(this.this$0) || UserEventHandler.access$3200(this.this$0).isSwitchingAnimationProgress()) {
            return;
        }
        UserEventHandler.access$3400(this.this$0).sendEvent(UserEventHandler.access$3500(this.this$0, false), new Object[0]);
        ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.TOUCH_CAPTURE);
    }
}
