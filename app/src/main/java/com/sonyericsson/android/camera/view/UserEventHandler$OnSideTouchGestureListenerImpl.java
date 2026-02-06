package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.SideTouchEventDetector$OnSideTouchGestureListener;
import com.sonyericsson.android.camera.SideTouchEventDetector$SideTouchEvent;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;

class UserEventHandler$OnSideTouchGestureListenerImpl implements SideTouchEventDetector$OnSideTouchGestureListener {
    private SideTouchEventDetector$SideTouchEvent mTriggerEvent;
    final /* synthetic */ UserEventHandler this$0;

    private UserEventHandler$OnSideTouchGestureListenerImpl(UserEventHandler userEventHandler) {
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$OnSideTouchGestureListenerImpl(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    private boolean isSideTouchAvailableMode() {
        switch (UserEventHandler.access$6000(this.this$0)) {
            case SUPERIOR_FRONT:
            case SCENE_RECOGNITION:
            case VIDEO:
            case FRONT_VIDEO:
                return true;
            default:
                return false;
        }
    }

    @Override // com.sonyericsson.android.camera.SideTouchEventDetector$OnSideTouchGestureListener
    public void onGestureStart() {
        UserEventHandler.access$6100(this.this$0, UserEventHandler$SideTouchEventSource.SIDE_SENSOR);
    }

    @Override // com.sonyericsson.android.camera.SideTouchEventDetector$OnSideTouchGestureListener
    public void onDoubleTap(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent, int i, int i2) {
        if (CamLog.DEBUG) {
            CamLog.d("OnSideTouchGestureListenerImpl#onDoubleTap() " + sideTouchEventDetector$SideTouchEvent);
        }
        if (UserEventHandler.access$6200(this.this$0, UserEventHandler$SideTouchEventSource.SIDE_SENSOR) && isSideTouchAvailableMode() && !UserEventHandler$AngleActionHandler.access$2200(UserEventHandler.access$3700(this.this$0)) && !UserEventHandler.access$3200(this.this$0).closeSettingDialogIfOpened() && UserEventHandler.access$3200(this.this$0).isUserOperable() && !UserEventHandler.access$3200(this.this$0).isTutorialOpened() && UserEventHandler.access$3900(this.this$0) && UserEventHandler.access$6300(this.this$0) != UserEventHandler$ActionByKey.CAPTURE_BURST) {
            if (UserEventHandler.access$3200(this.this$0).predictiveLaunchCoverExists()) {
                UserEventHandler.access$3200(this.this$0).hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger.SIDE_SENSING);
                LocalResearchUtil.getInstance().setPredictiveLaunchState(true);
            } else {
                LocalResearchUtil.getInstance().setPredictiveLaunchState(false);
            }
            if (UserEventHandler.access$3200(this.this$0).isSelfTimerCountDownViewShown()) {
                if (UserEventHandler.access$6000(this.this$0).isVideo()) {
                    UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_RECORDING, new Object[0]);
                    return;
                } else {
                    UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE, new Object[0]);
                    return;
                }
            }
            if (UserEventHandler.access$3200(this.this$0).isPreviewLayout() && UserEventHandler.access$3200(this.this$0).onSideTapped(sideTouchEventDetector$SideTouchEvent)) {
                ResearchUtil.getInstance().setSideSensePosition(i, i2);
                UserEventHandler.access$3400(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN, Event$SelfTimerTrigger.SIDE_SENSE);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.SideTouchEventDetector$OnSideTouchGestureListener
    public void onScrollStart(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent) {
        if (CamLog.DEBUG) {
            CamLog.d("OnSideTouchGestureListenerImpl#onScrollStart() " + sideTouchEventDetector$SideTouchEvent);
        }
        if (UserEventHandler.access$6200(this.this$0, UserEventHandler$SideTouchEventSource.SIDE_SENSOR) && isSideTouchAvailableMode() && UserEventHandler.access$3200(this.this$0).isUserOperable() && !UserEventHandler.access$3200(this.this$0).isTutorialOpened() && !UserEventHandler.access$3200(this.this$0).predictiveLaunchCoverExists()) {
            if (!UserEventHandler.access$6000(this.this$0).isFront()) {
                this.mTriggerEvent = sideTouchEventDetector$SideTouchEvent;
                if (UserEventHandler$AngleActionHandler.access$6400(UserEventHandler.access$3700(this.this$0))) {
                    UserEventHandler.access$3200(this.this$0).onSideTouchZoom(sideTouchEventDetector$SideTouchEvent, UserEventHandler.access$3700(this.this$0).getCurrentAngle());
                    return;
                }
                return;
            }
            UserEventHandler.access$3200(this.this$0).notifyZoomOperationRejected();
        }
    }

    @Override // com.sonyericsson.android.camera.SideTouchEventDetector$OnSideTouchGestureListener
    public void onScrollEnd() {
        if (CamLog.DEBUG) {
            CamLog.d("OnSideTouchGestureListenerImpl#onScrollEnd()");
        }
        if (UserEventHandler.access$6200(this.this$0, UserEventHandler$SideTouchEventSource.SIDE_SENSOR) && !UserEventHandler.access$6000(this.this$0).isFront()) {
            UserEventHandler$AngleActionHandler.access$2200(UserEventHandler.access$3700(this.this$0));
        }
    }

    @Override // com.sonyericsson.android.camera.SideTouchEventDetector$OnSideTouchGestureListener
    public void onScroll(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent) {
        if (CamLog.DEBUG) {
            CamLog.d("OnSideTouchGestureListenerImpl#onScrollEnd() " + sideTouchEventDetector$SideTouchEvent);
        }
        if (UserEventHandler.access$6200(this.this$0, UserEventHandler$SideTouchEventSource.SIDE_SENSOR) && !UserEventHandler.access$6000(this.this$0).isFront() && this.mTriggerEvent != null && this.mTriggerEvent.area == sideTouchEventDetector$SideTouchEvent.area) {
            UserEventHandler$AngleActionHandler.access$6500(UserEventHandler.access$3700(this.this$0), sideTouchEventDetector$SideTouchEvent.position - this.mTriggerEvent.position);
        }
    }

    @Override // com.sonyericsson.android.camera.SideTouchEventDetector$OnSideTouchGestureListener
    public void onGestureFinished() {
        if (UserEventHandler.access$6200(this.this$0, UserEventHandler$SideTouchEventSource.SIDE_SENSOR)) {
            UserEventHandler.access$1500(this.this$0);
        }
    }
}
