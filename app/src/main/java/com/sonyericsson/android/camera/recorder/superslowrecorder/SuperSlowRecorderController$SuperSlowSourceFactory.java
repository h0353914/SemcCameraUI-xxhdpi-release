package com.sonyericsson.android.camera.recorder.superslowrecorder;

import android.media.CamcorderProfile;
import android.media.MediaCodec;
import com.sonyericsson.android.camera.recorder.utility.encoder.InputDataSource;
import com.sonyericsson.android.camera.recorder.utility.encoder.source.MutableAudioSampleDataSource;
import com.sonyericsson.android.camera.recorder.utility.encoder.source.VideoFrameSource;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowRecorderController$SuperSlowSourceFactory implements VariableSourceMediaRecorder$InputDataSourceFactory {
    final /* synthetic */ SuperSlowRecorderController this$0;

    private SuperSlowRecorderController$SuperSlowSourceFactory(SuperSlowRecorderController superSlowRecorderController) {
        this.this$0 = superSlowRecorderController;
    }

    /* synthetic */ SuperSlowRecorderController$SuperSlowSourceFactory(SuperSlowRecorderController superSlowRecorderController, SuperSlowRecorderController$1 superSlowRecorderController$1) {
        this(superSlowRecorderController);
    }

    @Override // com.sonyericsson.android.camera.recorder.superslowrecorder.VariableSourceMediaRecorder$InputDataSourceFactory
    public VideoFrameSource createVideoSource(MediaCodec mediaCodec, CamcorderProfile camcorderProfile) {
        return new VideoFrameSource(mediaCodec);
    }

    @Override // com.sonyericsson.android.camera.recorder.superslowrecorder.VariableSourceMediaRecorder$InputDataSourceFactory
    public InputDataSource createAudioSource(MediaCodec mediaCodec, CamcorderProfile camcorderProfile) {
        SuperSlowRecorderController.access$1002(this.this$0, new MutableAudioSampleDataSource(mediaCodec, camcorderProfile.audioSampleRate, camcorderProfile.audioChannels, 2, SuperSlowRecorderController.access$1100(this.this$0), SuperSlowRecorderController.access$1200(this.this$0)));
        return SuperSlowRecorderController.access$1000(this.this$0);
    }
}
