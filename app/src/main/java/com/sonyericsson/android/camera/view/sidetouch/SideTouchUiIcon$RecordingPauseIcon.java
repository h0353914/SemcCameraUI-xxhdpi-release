package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import com.sonyericsson.android.camera.view.ViewFinderImpl$RecordingTimeReceiverProxy;
import com.sonyericsson.android.camera.view.ViewFinderImpl$SideTouchUiButtonListenerFactory;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;

protected final class SideTouchUiIcon$RecordingPauseIcon extends SideTouchUiIcon$RecordingIcon {
    protected SideTouchUiIcon$RecordingPauseIcon(Context context, int i, ViewFinderImpl$SideTouchUiButtonListenerFactory viewFinderImpl$SideTouchUiButtonListenerFactory, ViewFinderImpl$RecordingTimeReceiverProxy viewFinderImpl$RecordingTimeReceiverProxy) {
        super(context, i, viewFinderImpl$SideTouchUiButtonListenerFactory, viewFinderImpl$RecordingTimeReceiverProxy);
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon$RecordingIcon, com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon$ScreenButtonIcon
    protected void setupButtons() {
        setupButtonMain(OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_STOP_RECORDING_IN_PAUSE, this.mOrientation, false);
        setupButtonOption1(OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_RESUME_RECORDING, this.mOrientation, false);
        setupButtonOption2(OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_SNAPSHOT_RECORDING, this.mOrientation, true);
    }
}
