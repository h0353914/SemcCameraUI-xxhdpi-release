package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.cameracommon.focusview.FocusRectangles$FocusSetType;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;

class UserEventHandler$PhotoCaptureAreaEventProcedure extends UserEventHandler$FrontPhotoCaptureAreaEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$PhotoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$PhotoCaptureAreaEventProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    private void startAutoFocusAfterObjectTrackedIfPossible(Point point) {
        if (UserEventHandler.access$5900(this.this$0)) {
            return;
        }
        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED, point, UserEventHandler.access$3200(this.this$0).getPosition(point));
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$FrontPhotoCaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doTouchUp(Point point) {
        boolean z;
        if (UserEventHandler.access$3200(this.this$0).isAutoReviewShowing()) {
            UserEventHandler.access$3200(this.this$0).hideAutoReview();
            z = true;
        } else {
            z = false;
        }
        if (UserEventHandler$AngleActionHandler.access$2200(UserEventHandler.access$3700(this.this$0))) {
            z = true;
        }
        if (!z && UserEventHandler.access$3200(this.this$0).canFocusRectanglesBeUpdated()) {
            if (UserEventHandler.access$5100(this.this$0)) {
                setSelectedObjectPositionToDeviceAndViewFinder(point);
            } else if (UserEventHandler.access$3900(this.this$0)) {
                setFocusPositionToDeviceAndViewFinder(point, FocusRectangles$FocusSetType.FIRST);
                setFocusPositionToDeviceAndViewFinder(point, FocusRectangles$FocusSetType.RELEASE);
                UserEventHandler.access$3200(this.this$0).switchSemiAutoStateByTouch(true);
            } else {
                UserEventHandler.access$3200(this.this$0).switchSemiAutoStateByTouch(true);
            }
            if (UserEventHandler.access$4900(this.this$0)) {
                if (UserEventHandler.access$5100(this.this$0)) {
                    startAutoFocusAfterObjectTrackedIfPossible(point);
                }
                if (UserEventHandler.access$3200(this.this$0).isSwitchingAnimationProgress()) {
                    return;
                }
                if (this.mIsBurst) {
                    UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                } else {
                    UserEventHandler.access$3400(this.this$0).sendEvent(UserEventHandler.access$3500(this.this$0, false), new Object[0]);
                }
                ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.TOUCH_CAPTURE);
                LocalResearchUtil.getInstance().setPredictiveLaunchState(false);
            }
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
