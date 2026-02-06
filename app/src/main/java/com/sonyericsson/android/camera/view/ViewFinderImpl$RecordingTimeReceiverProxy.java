package com.sonyericsson.android.camera.view;

import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingTimeIndicator;

public class ViewFinderImpl$RecordingTimeReceiverProxy {
    private int mCurrentTime;
    private RecordingTimeIndicator mReceiver;

    public void bindReceiver(RecordingTimeIndicator recordingTimeIndicator) {
        this.mReceiver = recordingTimeIndicator;
    }

    public int getCurrentTime() {
        return this.mCurrentTime;
    }

    protected void reset() {
        this.mCurrentTime = 0;
    }

    protected void notifyOnTimeTicked(int i) {
        this.mCurrentTime = i;
        if (this.mReceiver == null) {
            return;
        }
        this.mReceiver.onTimeTicked(i);
    }
}
