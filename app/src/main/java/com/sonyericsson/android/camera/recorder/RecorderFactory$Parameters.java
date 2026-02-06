package com.sonyericsson.android.camera.recorder;

import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.recorder.superslowrecorder.OnSuperSlowRecordingFinishedListener;

public class RecorderFactory$Parameters {
    private final boolean mIsShutterSoundOn;
    private final RecorderController$RecorderListener mListener;
    private final OnSuperSlowRecordingFinishedListener mOnSuperSlowRecordingFinishedListener;
    private final int mProgressNotificationIntervalMillis;
    private final SlowMotion mSlowMotion;
    private final String mVideoStabilizer;

    static /* synthetic */ SlowMotion access$000(RecorderFactory$Parameters recorderFactory$Parameters) {
        return recorderFactory$Parameters.mSlowMotion;
    }

    static /* synthetic */ RecorderController$RecorderListener access$100(RecorderFactory$Parameters recorderFactory$Parameters) {
        return recorderFactory$Parameters.mListener;
    }

    static /* synthetic */ int access$200(RecorderFactory$Parameters recorderFactory$Parameters) {
        return recorderFactory$Parameters.mProgressNotificationIntervalMillis;
    }

    static /* synthetic */ String access$300(RecorderFactory$Parameters recorderFactory$Parameters) {
        return recorderFactory$Parameters.mVideoStabilizer;
    }

    static /* synthetic */ boolean access$400(RecorderFactory$Parameters recorderFactory$Parameters) {
        return recorderFactory$Parameters.mIsShutterSoundOn;
    }

    static /* synthetic */ OnSuperSlowRecordingFinishedListener access$500(RecorderFactory$Parameters recorderFactory$Parameters) {
        return recorderFactory$Parameters.mOnSuperSlowRecordingFinishedListener;
    }

    public RecorderFactory$Parameters(RecorderController$RecorderListener recorderController$RecorderListener, OnSuperSlowRecordingFinishedListener onSuperSlowRecordingFinishedListener, int i, boolean z, String str, SlowMotion slowMotion) {
        this.mListener = recorderController$RecorderListener;
        this.mOnSuperSlowRecordingFinishedListener = onSuperSlowRecordingFinishedListener;
        this.mProgressNotificationIntervalMillis = i;
        this.mIsShutterSoundOn = z;
        this.mVideoStabilizer = str;
        this.mSlowMotion = slowMotion;
    }
}
