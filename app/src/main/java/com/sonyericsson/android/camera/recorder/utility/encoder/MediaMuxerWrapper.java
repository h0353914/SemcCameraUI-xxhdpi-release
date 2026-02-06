package com.sonyericsson.android.camera.recorder.utility.encoder;

import android.media.MediaCodec$BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;

public class MediaMuxerWrapper {
    private static final float EXPECTED_OVERHEAD = 0.95f;
    private static final int MIN_DURATION_MS = 100;
    private final File mFile;
    private long[] mFirstFramePresentationTimeUs;
    private boolean[] mIsFirstFrameArrived;
    private long[] mLastProgressTimeUs;
    private final MediaMuxerWrapper$MuxerListener mListener;
    private long mMaxDurationUs;
    private long mMaxFileSize;
    private boolean mMaxLimitationReached;
    private final MediaMuxer mMuxer;

    public MediaMuxerWrapper(String str, int i, MediaMuxerWrapper$MuxerListener mediaMuxerWrapper$MuxerListener) throws IOException {
        this.mMaxDurationUs = Long.MAX_VALUE;
        this.mMaxLimitationReached = false;
        this.mMuxer = new MediaMuxer(str, i);
        this.mFile = new File(str);
        this.mListener = mediaMuxerWrapper$MuxerListener;
        this.mIsFirstFrameArrived = new boolean[1];
        this.mFirstFramePresentationTimeUs = new long[1];
        this.mLastProgressTimeUs = new long[1];
    }

    public MediaMuxerWrapper(FileDescriptor fileDescriptor, int i, MediaMuxerWrapper$MuxerListener mediaMuxerWrapper$MuxerListener) throws IOException {
        this.mMaxDurationUs = Long.MAX_VALUE;
        this.mMaxLimitationReached = false;
        this.mMuxer = new MediaMuxer(fileDescriptor, i);
        this.mFile = null;
        this.mListener = mediaMuxerWrapper$MuxerListener;
        this.mIsFirstFrameArrived = new boolean[1];
        this.mFirstFramePresentationTimeUs = new long[1];
        this.mLastProgressTimeUs = new long[1];
    }

    public void setMaxDuration(long j) {
        if (j > 0 && j < 100) {
            throw new IllegalArgumentException("Minmimum duration too short");
        }
        this.mMaxDurationUs = j * 1000;
    }

    public void setMaxFileSize(long j) {
        if (this.mFile != null) {
            j = (long) (0.95f * Math.min(j, this.mFile.getUsableSpace()));
        }
        this.mMaxFileSize = Math.max(0L, j);
    }

    public void setOrientationHint(int i) {
        this.mMuxer.setOrientationHint(i);
    }

    public void setLocation(float f, float f2) {
        this.mMuxer.setLocation(f, f2);
    }

    public int addTrack(MediaFormat mediaFormat) {
        int iAddTrack = this.mMuxer.addTrack(mediaFormat);
        if (iAddTrack > this.mFirstFramePresentationTimeUs.length - 1) {
            int i = iAddTrack + 1;
            this.mIsFirstFrameArrived = new boolean[i];
            this.mFirstFramePresentationTimeUs = new long[i];
            this.mLastProgressTimeUs = new long[i];
        }
        return iAddTrack;
    }

    public void start() {
        this.mMuxer.start();
    }

    public void stop() {
        this.mMuxer.stop();
    }

    public void release() {
        this.mMuxer.release();
    }

    public void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec$BufferInfo mediaCodec$BufferInfo) {
        if (mediaCodec$BufferInfo.flags == 4) {
            mediaCodec$BufferInfo.presentationTimeUs = this.mLastProgressTimeUs[i] + 1;
            mediaCodec$BufferInfo.size = 0;
            try {
                this.mMuxer.writeSampleData(i, byteBuffer, mediaCodec$BufferInfo);
            } catch (IllegalStateException unused) {
            }
            this.mLastProgressTimeUs[i] = mediaCodec$BufferInfo.presentationTimeUs;
            return;
        }
        if (this.mLastProgressTimeUs[i] >= mediaCodec$BufferInfo.presentationTimeUs - this.mFirstFramePresentationTimeUs[i] || this.mMaxLimitationReached) {
            return;
        }
        if (this.mLastProgressTimeUs[i] >= this.mMaxDurationUs && this.mMaxDurationUs > 0) {
            this.mMaxLimitationReached = true;
            this.mListener.onMaxDurationReached();
            return;
        }
        if (this.mFile != null && this.mMaxFileSize > 0 && this.mFile.length() + ((long) byteBuffer.limit()) > this.mMaxFileSize) {
            this.mListener.onMaxFileSizeReached();
            this.mMaxLimitationReached = true;
            return;
        }
        if (!this.mIsFirstFrameArrived[i]) {
            this.mIsFirstFrameArrived[i] = true;
            this.mFirstFramePresentationTimeUs[i] = mediaCodec$BufferInfo.presentationTimeUs;
        }
        mediaCodec$BufferInfo.presentationTimeUs -= this.mFirstFramePresentationTimeUs[i];
        try {
            this.mMuxer.writeSampleData(i, byteBuffer, mediaCodec$BufferInfo);
        } catch (IllegalStateException unused2) {
            this.mMaxLimitationReached = true;
            this.mListener.onStorageFull();
        }
        this.mLastProgressTimeUs[i] = mediaCodec$BufferInfo.presentationTimeUs;
        this.mListener.onProgress(this.mLastProgressTimeUs[i]);
    }
}
