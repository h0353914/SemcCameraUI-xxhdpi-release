package com.sonyericsson.android.camera.view;

import com.sonymobile.cameracommon.research.parameters.Event$PredictiveLaunchAction;

/* JADX INFO: loaded from: classes.dex */
public enum ViewFinderImpl$PredictiveLaunchHideTrigger {
    TOUCH_UP(Event$PredictiveLaunchAction.TOUCH_UP),
    TOUCH_UP_CAPTURE(Event$PredictiveLaunchAction.TOUCH_UP),
    HW_CAMERA_KEY(Event$PredictiveLaunchAction.HW_CAMERA_KEY),
    VOLUME_KEY_SHUTTER(Event$PredictiveLaunchAction.VOLUME_KEY),
    VOLUME_KEY_ZOOM(Event$PredictiveLaunchAction.VOLUME_KEY),
    SIDE_SENSING(Event$PredictiveLaunchAction.SIDE_SENSING),
    OTHER(Event$PredictiveLaunchAction.OTHER);

    public final Event$PredictiveLaunchAction mAction;

    ViewFinderImpl$PredictiveLaunchHideTrigger(Event$PredictiveLaunchAction event$PredictiveLaunchAction) {
        this.mAction = event$PredictiveLaunchAction;
    }
}
