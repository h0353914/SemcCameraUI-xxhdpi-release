package com.sonymobile.android.media.internal;

import android.media.MediaCodec;
import android.media.MediaCodec$BufferInfo;
import android.media.MediaCodec$Callback;
import android.media.MediaCodec$CodecException;
import android.media.MediaFormat;
import android.support.annotation.NonNull;
import android.util.Log;

class VideoTrack$VideoEncoderCallback extends MediaCodec$Callback {
    final /* synthetic */ VideoTrack this$0;

    @Override // android.media.MediaCodec$Callback
    public void onInputBufferAvailable(@NonNull MediaCodec mediaCodec, int i) {
    }

    @Override // android.media.MediaCodec$Callback
    public void onOutputFormatChanged(@NonNull MediaCodec mediaCodec, @NonNull MediaFormat mediaFormat) {
    }

    private VideoTrack$VideoEncoderCallback(VideoTrack videoTrack) {
        this.this$0 = videoTrack;
    }

    /* synthetic */ VideoTrack$VideoEncoderCallback(VideoTrack videoTrack, VideoTrack$1 videoTrack$1) {
        this(videoTrack);
    }

    @Override // android.media.MediaCodec$Callback
    public void onOutputBufferAvailable(@NonNull MediaCodec mediaCodec, int i, @NonNull MediaCodec$BufferInfo mediaCodec$BufferInfo) {
        VideoTrack.access$1400(this.this$0).obtainMessage(105, i, 0, mediaCodec$BufferInfo).sendToTarget();
    }

    @Override // android.media.MediaCodec$Callback
    public void onError(@NonNull MediaCodec mediaCodec, @NonNull MediaCodec$CodecException mediaCodec$CodecException) {
        Log.e("VideoTrack", "Error from encoder", mediaCodec$CodecException);
        VideoTrack.access$1200(this.this$0).obtainMessage(1, 4, 0).sendToTarget();
    }
}
