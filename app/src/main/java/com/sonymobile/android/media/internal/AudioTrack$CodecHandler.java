package com.sonymobile.android.media.internal;

import android.media.MediaCodec$BufferInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class AudioTrack$CodecHandler extends Handler {
    final /* synthetic */ AudioTrack this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AudioTrack$CodecHandler(AudioTrack audioTrack, Looper looper) {
        super(looper);
        this.this$0 = audioTrack;
    }

    private void doQueueOutputBuffer(int i, MediaCodec$BufferInfo mediaCodec$BufferInfo) throws IllegalStateException {
        if (AudioTrack.access$1200(this.this$0)) {
            boolean z = (mediaCodec$BufferInfo.flags & 2) == 2;
            addTrack();
            AudioTrack.access$1202(this.this$0, false);
            if (z) {
                this.this$0.mEncoder.releaseOutputBuffer(i, false);
                return;
            }
        }
        Track$EncodedBuffer track$EncodedBuffer = new Track$EncodedBuffer(i, mediaCodec$BufferInfo);
        if (this.this$0.mMuxerState == Track$MuxerState.IDLE) {
            ByteBuffer outputBuffer = this.this$0.mEncoder.getOutputBuffer(i);
            if (outputBuffer != null) {
                track$EncodedBuffer.byteBuffer = ByteBuffer.allocate(outputBuffer.limit());
                outputBuffer.rewind();
                track$EncodedBuffer.byteBuffer.put(outputBuffer);
                track$EncodedBuffer.containsCopiedBuffer = true;
            }
            this.this$0.mEncoder.releaseOutputBuffer(i, false);
        }
        this.this$0.mBufferList.add(track$EncodedBuffer);
        if ((track$EncodedBuffer.bufferInfo.flags & 4) != 0) {
            AudioTrack.access$1300(this.this$0).obtainMessage(110).sendToTarget();
        } else {
            AudioTrack.access$1300(this.this$0).obtainMessage(104).sendToTarget();
        }
    }

    private void addTrack() {
        if (this.this$0.mMuxerTrackIndex < 0) {
            this.this$0.mMuxerTrackIndex = this.this$0.mMuxerWrapper.addTrack(this.this$0.mEncoder.getOutputFormat());
            AudioTrack.access$900(this.this$0).obtainMessage(1, 11, 0).sendToTarget();
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 105) {
            return;
        }
        try {
            doQueueOutputBuffer(message.arg1, (MediaCodec$BufferInfo) message.obj);
        } catch (IllegalStateException unused) {
        }
    }
}
