package com.sonymobile.android.media.internal;

import android.media.MediaCodec$BufferInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.nio.ByteBuffer;

class VideoTrack$CodecHandler extends Handler {
    final /* synthetic */ VideoTrack this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoTrack$CodecHandler(VideoTrack videoTrack, Looper looper) {
        super(looper);
        this.this$0 = videoTrack;
    }

    private void doQueueOutputBuffer(int i, MediaCodec$BufferInfo mediaCodec$BufferInfo) {
        if (VideoTrack.access$100(this.this$0).equals("video/x-vnd.on2.vp8") || VideoTrack.access$100(this.this$0).equals("video/3gpp")) {
            if (VideoTrack.access$200(this.this$0)) {
                addTrack();
                VideoTrack.access$202(this.this$0, false);
            }
        } else {
            if (((mediaCodec$BufferInfo.flags & 2) == 2) && VideoTrack.access$200(this.this$0)) {
                addTrack();
                this.this$0.mEncoder.releaseOutputBuffer(i, false);
                VideoTrack.access$202(this.this$0, false);
                return;
            }
        }
        boolean z = (mediaCodec$BufferInfo.flags & 1) == 1;
        if (VideoTrack.access$300(this.this$0) < 0) {
            if (z) {
                VideoTrack.access$302(this.this$0, mediaCodec$BufferInfo.presentationTimeUs);
                mediaCodec$BufferInfo.presentationTimeUs = 0L;
            }
            queueBuffer(i, mediaCodec$BufferInfo);
            return;
        }
        if ((mediaCodec$BufferInfo.flags & 4) == 4) {
            queueBuffer(i, mediaCodec$BufferInfo);
            return;
        }
        long jAccess$300 = mediaCodec$BufferInfo.presentationTimeUs - VideoTrack.access$300(this.this$0);
        mediaCodec$BufferInfo.presentationTimeUs = jAccess$300 - VideoTrack.access$400(this.this$0);
        if (VideoTrack.access$500(this.this$0) > 0 && mediaCodec$BufferInfo.presentationTimeUs > VideoTrack.access$500(this.this$0) && this.this$0.mState != Track$States.STOPPED && this.this$0.mState != Track$States.STOPPING) {
            this.this$0.mState = Track$States.STOPPING;
            this.this$0.mEncoder.signalEndOfInputStream();
        }
        if (mediaCodec$BufferInfo.size == 0) {
            queueBuffer(i, mediaCodec$BufferInfo);
            return;
        }
        if (!this.this$0.mClock.isPausedAt(jAccess$300)) {
            if (VideoTrack.access$600(this.this$0)) {
                VideoTrack.access$702(this.this$0, true);
                VideoTrack.access$802(this.this$0, false);
                VideoTrack.access$602(this.this$0, false);
            }
            if (VideoTrack.access$700(this.this$0)) {
                if (!VideoTrack.access$800(this.this$0)) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("request-sync", 0);
                    this.this$0.mEncoder.setParameters(bundle);
                    VideoTrack.access$802(this.this$0, true);
                }
                if (!z) {
                    this.this$0.mEncoder.releaseOutputBuffer(i, false);
                    VideoTrack.access$908(this.this$0);
                    VideoTrack.access$1002(this.this$0, VideoTrack.access$1000(this.this$0) + VideoTrack.access$1100(this.this$0));
                    return;
                } else {
                    VideoTrack.access$702(this.this$0, false);
                    long jAccess$1000 = VideoTrack.access$1000(this.this$0) + VideoTrack.access$1100(this.this$0);
                    VideoTrack.access$402(this.this$0, jAccess$300 - jAccess$1000);
                    mediaCodec$BufferInfo.presentationTimeUs = jAccess$1000;
                }
            }
            queueBuffer(i, mediaCodec$BufferInfo);
            return;
        }
        if (!VideoTrack.access$600(this.this$0)) {
            VideoTrack.access$602(this.this$0, true);
        }
        this.this$0.mEncoder.releaseOutputBuffer(i, false);
    }

    private void addTrack() {
        if (this.this$0.mMuxerTrackIndex < 0) {
            this.this$0.mMuxerTrackIndex = this.this$0.mMuxerWrapper.addTrack(this.this$0.mEncoder.getOutputFormat());
            VideoTrack.access$1200(this.this$0).obtainMessage(1, 10, 0).sendToTarget();
        }
    }

    private void queueBuffer(int i, MediaCodec$BufferInfo mediaCodec$BufferInfo) {
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
            if (mediaCodec$BufferInfo.presentationTimeUs > 10000000) {
                Log.e("VideoTrack", "MediaMuxer is timed out.");
                throw new RuntimeException("MediaMuxer is timed out.");
            }
        }
        this.this$0.mBufferList.add(track$EncodedBuffer);
        VideoTrack.access$1002(this.this$0, mediaCodec$BufferInfo.presentationTimeUs);
        if ((mediaCodec$BufferInfo.flags & 4) != 0) {
            VideoTrack.access$1300(this.this$0).obtainMessage(110).sendToTarget();
        } else {
            VideoTrack.access$1300(this.this$0).obtainMessage(104).sendToTarget();
        }
    }

    private void doTimeOutBufferCallback() {
        if (VideoTrack.access$500(this.this$0) <= 0 || this.this$0.mState == Track$States.STOPPED || this.this$0.mState == Track$States.STOPPING) {
            return;
        }
        this.this$0.mState = Track$States.STOPPING;
        Log.w("VideoTrack", "Forced stop due to timeout of buffer callback : recording duration at stop = " + VideoTrack.access$500(this.this$0) + " , last recorded timestamp = " + VideoTrack.access$1000(this.this$0));
        this.this$0.mEncoder.signalEndOfInputStream();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 105) {
            doQueueOutputBuffer(message.arg1, (MediaCodec$BufferInfo) message.obj);
        } else {
            if (i != 111) {
                return;
            }
            doTimeOutBufferCallback();
        }
    }
}
