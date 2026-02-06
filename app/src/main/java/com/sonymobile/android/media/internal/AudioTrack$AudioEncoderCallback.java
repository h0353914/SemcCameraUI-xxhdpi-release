package com.sonymobile.android.media.internal;

import android.media.MediaCodec;
import android.media.MediaCodec$BufferInfo;
import android.media.MediaCodec$Callback;
import android.media.MediaCodec$CodecException;
import android.media.MediaFormat;
import android.support.annotation.NonNull;
import android.util.Log;

class AudioTrack$AudioEncoderCallback extends MediaCodec$Callback {
    final /* synthetic */ AudioTrack this$0;

    @Override // android.media.MediaCodec$Callback
    public void onOutputFormatChanged(@NonNull MediaCodec mediaCodec, @NonNull MediaFormat mediaFormat) {
    }

    private AudioTrack$AudioEncoderCallback(AudioTrack audioTrack) {
        this.this$0 = audioTrack;
    }

    /* synthetic */ AudioTrack$AudioEncoderCallback(AudioTrack audioTrack, AudioTrack$1 audioTrack$1) {
        this(audioTrack);
    }

    @Override // android.media.MediaCodec$Callback
    public void onInputBufferAvailable(@NonNull MediaCodec mediaCodec, int i) {
        AudioTrack.access$1000(this.this$0).obtainMessage(102, i, 0).sendToTarget();
    }

    @Override // android.media.MediaCodec$Callback
    public void onOutputBufferAvailable(@NonNull MediaCodec mediaCodec, int i, @NonNull MediaCodec$BufferInfo mediaCodec$BufferInfo) {
        AudioTrack.access$1400(this.this$0).obtainMessage(105, i, 0, mediaCodec$BufferInfo).sendToTarget();
    }

    @Override // android.media.MediaCodec$Callback
    public void onError(@NonNull MediaCodec mediaCodec, @NonNull MediaCodec$CodecException mediaCodec$CodecException) {
        Log.e("AudioTrack", "Error from encoder", mediaCodec$CodecException);
        AudioTrack.access$900(this.this$0).obtainMessage(1, 4, 0).sendToTarget();
    }
}
