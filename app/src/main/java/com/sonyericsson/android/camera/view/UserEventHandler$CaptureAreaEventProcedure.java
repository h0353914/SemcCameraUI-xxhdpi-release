package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.focusview.FocusRectangles$FocusSetType;

class UserEventHandler$CaptureAreaEventProcedure extends UserEventHandler$TouchEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$CaptureAreaEventProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$CaptureAreaEventProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doCancel() {
        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
    }

    void setSelectedObjectPositionToDeviceAndViewFinder(Point point) {
        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_SET_SELECTED_OBJECT_POSITION, point, UserEventHandler.access$3200(this.this$0).getPosition(point));
    }

    void setFocusPositionToDeviceAndViewFinder(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        if (PlatformCapability.isTouchFocusSupported(UserEventHandler.access$3400(this.this$0).getCurrentCameraId())) {
            UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_SET_TOUCHED_POSITION, point, UserEventHandler.access$3200(this.this$0).convertTouchPointToRectInDevicePreviewPositionRatio(point), focusRectangles$FocusSetType);
        }
    }
}
