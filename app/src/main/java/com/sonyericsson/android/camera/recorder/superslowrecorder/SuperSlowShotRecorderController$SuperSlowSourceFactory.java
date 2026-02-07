package com.sonyericsson.android.camera.recorder.superslowrecorder;

import android.media.CamcorderProfile;
import android.media.MediaCodec;
import com.sonyericsson.android.camera.recorder.utility.encoder.InputDataSource;
import com.sonyericsson.android.camera.recorder.utility.encoder.source.VideoFrameSource;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowShotRecorderController$SuperSlowSourceFactory implements VariableSourceMediaRecorder$InputDataSourceFactory {
    private SuperSlowShotRecorderController$SuperSlowSourceFactory() {
    }

    /* synthetic */ SuperSlowShotRecorderController$SuperSlowSourceFactory(SuperSlowShotRecorderController$1 superSlowShotRecorderController$1) {
        this();
    }

    @Override // com.sonyericsson.android.camera.recorder.superslowrecorder.VariableSourceMediaRecorder$InputDataSourceFactory
    public VideoFrameSource createVideoSource(MediaCodec mediaCodec, CamcorderProfile camcorderProfile) {
        return new VideoFrameSource(mediaCodec);
    }

    @Override // com.sonyericsson.android.camera.recorder.superslowrecorder.VariableSourceMediaRecorder$InputDataSourceFactory
    public InputDataSource createAudioSource(MediaCodec mediaCodec, CamcorderProfile camcorderProfile) {
        throw new UnsupportedOperationException("This recorder doesn't support audio track.");
    }
}
