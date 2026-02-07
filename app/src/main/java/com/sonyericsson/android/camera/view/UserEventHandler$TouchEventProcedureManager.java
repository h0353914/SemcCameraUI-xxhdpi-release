package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$TouchEventProcedureManager {
    private final Map<UserEventHandler$TouchEventSource, UserEventHandler$TouchEventProcedure> mProcedures = new HashMap();
    final /* synthetic */ UserEventHandler this$0;

    public UserEventHandler$TouchEventProcedureManager(UserEventHandler userEventHandler) {
        this.this$0 = userEventHandler;
        register(new UserEventHandler$CaptureButtonProcedure(userEventHandler, null), OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE, OnScreenButtonItemFactory$ButtonType.CAPTURE_SMALL, OnScreenButtonItemFactory$ButtonType.CAPTURE_LARGE, OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER, OnScreenButtonItemFactory$ButtonType.CAPTURE_WITH_SELFTIMER_SHORT, OnScreenButtonItemFactory$ButtonType.CAPTURE_WITH_SELFTIMER_LONG, OnScreenButtonItemFactory$ButtonType.CAPTURE_WITH_SELFTIMER_LARGE, OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER_SHORT, OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER_LONG, OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_SNAPSHOT_RECORDING);
        register(new UserEventHandler$StopSlowMotionRecordingButtonProcedure(userEventHandler, null), OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_SMALL);
        register(new UserEventHandler$SelfTimerCancelButtonProcedure(userEventHandler, null), OnScreenButtonItemFactory$ButtonType.CANCEL_SELFTIMER_LARGE, OnScreenButtonItemFactory$ButtonType.CANCEL_SELFTIMER_SIDE);
        register(new UserEventHandler$VideoRecordingButtonProcedure(userEventHandler, null), OnScreenButtonItemFactory$ButtonType.TOUCH_RECORDING_START, OnScreenButtonItemFactory$ButtonType.START_RECORDING_LARGE, OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_LARGE, OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_IN_PAUSE_LARGE, OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_START_RECORDING, OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_STOP_RECORDING, OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_STOP_RECORDING_IN_PAUSE);
        register(new UserEventHandler$SuperSlowTriggerButtonProcedure(userEventHandler, null), OnScreenButtonItemFactory$ButtonType.TRIGGER_SUPER_SLOW_MOTION);
        register(new UserEventHandler$VideoRecordingCamcordButtonProcedure(userEventHandler, false), OnScreenButtonItemFactory$ButtonType.RESUME_RECORDING_SMALL, OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_RESUME_RECORDING);
        register(new UserEventHandler$VideoRecordingCamcordButtonProcedure(userEventHandler, true), OnScreenButtonItemFactory$ButtonType.PAUSE_RECORDING_SMALL, OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_PAUSE_RECORDING);
        register(new UserEventHandler$CaptureAreaTouchEventProcedureSelector(userEventHandler, null), UserEventHandler$UiComponent.CAPTURE_AREA);
        register(new UserEventHandler$AngleChangeButtonProcedure(userEventHandler, null), UserEventHandler$UiComponent.ANGLE_CHANGE_BUTTON);
        register(new UserEventHandler$PredictiveLaunchCoverProcedure(userEventHandler, null), UserEventHandler$UiComponent.PREDICTIVE_LAUNCH_COVER);
    }

    public UserEventHandler$TouchEventProcedure find(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedure = this.mProcedures.get(userEventHandler$TouchEventSource);
        if (CamLog.DEBUG) {
            if (userEventHandler$TouchEventProcedure != null) {
                CamLog.d("find(" + userEventHandler$TouchEventSource.toString() + ") TouchEventProcedure:" + userEventHandler$TouchEventProcedure.getClass().getSimpleName());
            } else {
                CamLog.d("find(" + userEventHandler$TouchEventSource.toString() + ") TouchEventProcedure:not found");
            }
        }
        return userEventHandler$TouchEventProcedure;
    }

    private void register(UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedure, UserEventHandler$TouchEventSource... userEventHandler$TouchEventSourceArr) {
        for (UserEventHandler$TouchEventSource userEventHandler$TouchEventSource : userEventHandler$TouchEventSourceArr) {
            this.mProcedures.put(userEventHandler$TouchEventSource, userEventHandler$TouchEventProcedure);
        }
    }
}
