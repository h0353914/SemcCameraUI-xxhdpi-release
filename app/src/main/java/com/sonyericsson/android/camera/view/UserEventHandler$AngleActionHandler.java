package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.angle.FrontAngleChangeCalculator;
import com.sonyericsson.android.camera.view.angle.KeyZoomStepCalculator;
import com.sonyericsson.android.camera.view.angle.PinchZoomStepCalculator;
import com.sonyericsson.android.camera.view.angle.SideTouchZoomStepCalculator;
import com.sonyericsson.android.camera.view.angle.VariableIndex;
import com.sonyericsson.android.camera.view.angle.VariableIndex$Calculator;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$AngleActionHandler {
    private VariableIndex$Calculator mCalculator;
    private VariableIndex mCurrentVariable;
    private UserEventHandler$VariableUserEventTicker mEventTicker;
    private int mSideTouchScrollDistance;
    final /* synthetic */ UserEventHandler this$0;

    private UserEventHandler$AngleActionHandler(UserEventHandler userEventHandler) {
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$AngleActionHandler(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    static /* synthetic */ void access$2000(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        userEventHandler$AngleActionHandler.clear();
    }

    static /* synthetic */ boolean access$2100(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler, boolean z) {
        return userEventHandler$AngleActionHandler.prepareKeyZooming(z);
    }

    static /* synthetic */ boolean access$2200(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        return userEventHandler$AngleActionHandler.stopZooming();
    }

    static /* synthetic */ void access$3800(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        userEventHandler$AngleActionHandler.switchFrontAngle();
    }

    static /* synthetic */ boolean access$5200(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        return userEventHandler$AngleActionHandler.preparePinchZooming();
    }

    static /* synthetic */ boolean access$5300(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler, float f) {
        return userEventHandler$AngleActionHandler.performPinchZooming(f);
    }

    static /* synthetic */ boolean access$5400(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        return userEventHandler$AngleActionHandler.isHandling();
    }

    static /* synthetic */ boolean access$6400(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        return userEventHandler$AngleActionHandler.prepareSideTouchZoom();
    }

    static /* synthetic */ void access$6500(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler, int i) {
        userEventHandler$AngleActionHandler.updateSideTouchZoomStrength(i);
    }

    static /* synthetic */ int access$6700(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        return userEventHandler$AngleActionHandler.mSideTouchScrollDistance;
    }

    static /* synthetic */ boolean access$6800(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler, Object[] objArr) {
        return userEventHandler$AngleActionHandler.performZoom(objArr);
    }

    static /* synthetic */ boolean access$6900(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        return userEventHandler$AngleActionHandler.performKeyZooming();
    }

    static /* synthetic */ boolean access$7000(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler, FrontAngle frontAngle) {
        return userEventHandler$AngleActionHandler.performFrontAngleChange(frontAngle);
    }

    static /* synthetic */ boolean access$7100(UserEventHandler$AngleActionHandler userEventHandler$AngleActionHandler) {
        return userEventHandler$AngleActionHandler.finishZoom();
    }

    private boolean preparePinchZooming() {
        return prepareZoom(new PinchZoomStepCalculator());
    }

    private boolean prepareSideTouchZoom() {
        if (!prepareZoom(new SideTouchZoomStepCalculator())) {
            return false;
        }
        this.mSideTouchScrollDistance = 0;
        this.mEventTicker = new UserEventHandler$VariableUserEventTicker(null);
        this.mEventTicker.start(33, new UserEventHandler$AngleActionHandler$1(this));
        return true;
    }

    private boolean prepareKeyZooming(boolean z) {
        if (!prepareZoom(new KeyZoomStepCalculator(z))) {
            return false;
        }
        this.mEventTicker = new UserEventHandler$VariableUserEventTicker(null);
        this.mEventTicker.start(33, new UserEventHandler$AngleActionHandler$2(this));
        return true;
    }

    private boolean prepareZoom(VariableIndex$Calculator variableIndex$Calculator) {
        if (isHandling()) {
            return false;
        }
        if (UserEventHandler.access$6000(this.this$0).isFront() || !UserEventHandler.access$3900(this.this$0)) {
            UserEventHandler.access$3200(this.this$0).notifyZoomOperationRejected();
            return false;
        }
        if (UserEventHandler.access$3400(this.this$0).isAngleEventReceivable()) {
            this.mCalculator = variableIndex$Calculator;
            Float zoom = UserEventHandler.access$3400(this.this$0).getZoom();
            if (zoom != null) {
                this.mCurrentVariable = new VariableIndex(120, 0, (int) (120.0f * zoom.floatValue()));
                UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ZOOM_PREPARE, this.mCurrentVariable);
                return true;
            }
        }
        return false;
    }

    private boolean prepareFrontAngleChange(FrontAngle frontAngle) {
        if (!UserEventHandler.access$6000(this.this$0).isFront() || !UserEventHandler.access$3400(this.this$0).isAngleEventReceivable()) {
            return false;
        }
        this.mCalculator = new FrontAngleChangeCalculator();
        this.mCurrentVariable = new VariableIndex(120, 0, getFrontAngleStep(frontAngle));
        return true;
    }

    private boolean performPinchZooming(float f) {
        return performZoom(Float.valueOf(f));
    }

    private boolean performKeyZooming() {
        return performZoom(Long.valueOf(System.currentTimeMillis()));
    }

    private void updateSideTouchZoomStrength(int i) {
        this.mSideTouchScrollDistance = i;
    }

    private boolean performFrontAngleChange(FrontAngle frontAngle) {
        return performZoom(Integer.valueOf(getFrontAngleStep(frontAngle)));
    }

    private boolean performZoom(Object... objArr) {
        if (!isHandling()) {
            return false;
        }
        int index = this.mCurrentVariable.getIndex();
        this.mCurrentVariable = this.mCalculator.calculate(this.mCurrentVariable, objArr);
        boolean z = index != this.mCurrentVariable.getIndex();
        if (z) {
            UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ZOOM_PERFORM, this.mCurrentVariable);
        }
        return z;
    }

    private boolean stopZooming() {
        return finishZoom();
    }

    private boolean finishZoom() {
        if (!isHandling()) {
            return false;
        }
        UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ZOOM_FINISH, new Object[0]);
        clear();
        return true;
    }

    private boolean isHandling() {
        return (this.mCurrentVariable == null || this.mCalculator == null) ? false : true;
    }

    private void clear() {
        if (this.mEventTicker != null) {
            this.mEventTicker.stop();
            this.mEventTicker = null;
        }
        this.mCurrentVariable = null;
        this.mCalculator = null;
    }

    private void switchFrontAngle() {
        FrontAngle frontAngle = (FrontAngle) UserEventHandler.access$4600(this.this$0).get(UserSettingKey.FRONT_ANGLE);
        if (prepareFrontAngleChange(frontAngle)) {
            UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ANGLE_CHANGE_START, new Object[0]);
            FrontAngle frontAngle2 = frontAngle == FrontAngle.DEFAULT ? FrontAngle.CROPPED : FrontAngle.DEFAULT;
            UserEventHandler.access$4600(this.this$0).set(frontAngle2);
            UserEventHandler.access$3200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ANGLE_CHANGE_START, new Object[0]);
            LocalResearchUtil.getInstance().setSettingsValue(frontAngle, frontAngle2, UserEventHandler.access$6000(this.this$0));
            this.mEventTicker = new UserEventHandler$VariableUserEventTicker(null);
            this.mEventTicker.start(33, new UserEventHandler$AngleActionHandler$3(this, frontAngle2));
        }
    }

    private int getFrontAngleStep(FrontAngle frontAngle) {
        if (frontAngle != FrontAngle.CROPPED) {
            return 0;
        }
        return (int) (((((double) PlatformCapability.getWideZoomTargetRatio(CameraInfo$CameraId.FRONT)) - 1.0d) / (((double) PlatformCapability.getMaxZoomRatio(CameraInfo$CameraId.FRONT)) - 1.0d)) * 120.0d);
    }

    protected int getCurrentAngle() {
        return this.mCurrentVariable.getIndex();
    }
}
