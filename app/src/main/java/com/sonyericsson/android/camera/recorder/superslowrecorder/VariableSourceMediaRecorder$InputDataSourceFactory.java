package com.sonyericsson.android.camera.recorder.superslowrecorder;

import android.media.CamcorderProfile;
import android.media.MediaCodec;
import com.sonyericsson.android.camera.recorder.utility.encoder.InputDataSource;
import com.sonyericsson.android.camera.recorder.utility.encoder.source.VideoFrameSource;

/* JADX INFO: loaded from: classes.dex */
public interface VariableSourceMediaRecorder$InputDataSourceFactory {
    InputDataSource createAudioSource(MediaCodec mediaCodec, CamcorderProfile camcorderProfile);

    VideoFrameSource createVideoSource(MediaCodec mediaCodec, CamcorderProfile camcorderProfile);
}
