package com.sonyericsson.android.camera.recorder.defaultrecorder;

import android.media.MediaRecorder$OnErrorListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnErrorListener;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.android.media.MediaRecorder;

class DefaultRecorder$OnErrorListener implements MediaRecorder$OnErrorListener {
    private final RecorderInterface$OnErrorListener mListener;

    /* synthetic */ DefaultRecorder$OnErrorListener(RecorderInterface$OnErrorListener recorderInterface$OnErrorListener, DefaultRecorder$1 defaultRecorder$1) {
        this(recorderInterface$OnErrorListener);
    }

    private DefaultRecorder$OnErrorListener(RecorderInterface$OnErrorListener recorderInterface$OnErrorListener) {
        this.mListener = recorderInterface$OnErrorListener;
    }

    private void onError(MediaRecorder mediaRecorder, int i, int i2) {
        CamLog.e("onError() E what:" + DefaultRecorder.access$200(i) + " extra:" + i2);
        this.mListener.onError();
        CamLog.e("onError() X");
    }

    @Override // android.media.MediaRecorder$OnErrorListener
    public void onError(android.media.MediaRecorder mediaRecorder, int i, int i2) {
        onError((MediaRecorder) null, i, i2);
    }
}
