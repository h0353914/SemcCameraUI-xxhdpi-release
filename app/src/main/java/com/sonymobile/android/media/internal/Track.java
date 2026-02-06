package com.sonymobile.android.media.internal;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;

public abstract class Track {
    public static final int AUDIO_CODEC_MUXER_TRACK_ADDED = 11;
    public static final int CODEC_ERROR = 4;
    public static final int CODEC_FORMAT_UNSUPPORTED = 2;
    public static final int CODEC_ILLEGAL_STATE = 3;
    public static final int CODEC_UNSUPPORTED = 1;
    protected static final int MSG_AUDIO_CODEC_STOPPED = 103;
    protected static final int MSG_FLUSH_OUTPUT_BUFFERS = 110;
    protected static final int MSG_HANDLE_INPUT_BUFFER = 102;
    protected static final int MSG_PAUSE = 5;
    protected static final int MSG_PREPARE = 3;
    protected static final int MSG_QUEUE_OUTPUT_BUFFER = 105;
    protected static final int MSG_RELEASE = 4;
    protected static final int MSG_RELEASE_AUDIO_RECORDER = 108;
    protected static final int MSG_RESET = 7;
    protected static final int MSG_RESUME = 6;
    protected static final int MSG_START = 1;
    protected static final int MSG_START_AUDIO_RECORDER = 109;
    protected static final int MSG_STOP = 2;
    protected static final int MSG_STOP_AUDIO_RECORDER = 107;
    protected static final int MSG_TIME_OUT_OUTPUT_BUFFER_RECEIVE = 111;
    protected static final int MSG_VIDEO_CODEC_STOPPED = 101;
    protected static final int MSG_WRITE_OUTPUT_BUFFER = 104;
    private static final String TAG = "Track";
    public static final int UNKNOWN = 0;
    public static final int VIDEO_CODEC_MUXER_TRACK_ADDED = 10;
    protected LinkedBlockingDeque<Track$EncodedBuffer> mBufferList;
    protected ClockInterface mClock;
    protected MediaCodec mEncoder;
    protected Track$EventHandler mEventHandler;
    protected HandlerHelper mHandlerHelper;
    protected boolean mIsPauseLatchDown;
    protected MediaMuxerWrapper mMuxerWrapper;
    protected CountDownLatch mPauseLatch;
    protected Track$States mState;
    protected int mEncodingBitRate = 2000000;
    protected int mOperatingRate = 0;
    protected Track$MuxerState mMuxerState = Track$MuxerState.IDLE;
    protected int mMuxerTrackIndex = -1;

    protected abstract void doPause();

    protected abstract void doPrepare();

    protected abstract void doRelease();

    protected abstract void doReset();

    protected abstract void doResume(CountDownLatch countDownLatch);

    protected abstract void doStart();

    protected abstract void doStop();

    protected abstract void doWriteOutputBuffer();

    public void setEncodingBitrate(int i) {
        this.mEncodingBitRate = i;
    }

    public void setOperatingRate(int i) {
        this.mOperatingRate = i;
    }

    public void setClock(ClockInterface clockInterface) {
        this.mClock = clockInterface;
    }

    public void pause(CountDownLatch countDownLatch, boolean z) {
        this.mPauseLatch = countDownLatch;
        this.mIsPauseLatchDown = false;
        if (this.mMuxerState == Track$MuxerState.IDLE && !z) {
            this.mPauseLatch.countDown();
            this.mIsPauseLatchDown = true;
        }
        this.mEventHandler.obtainMessage(5).sendToTarget();
    }

    public void prepare() {
        this.mHandlerHelper.sendMessageAndAwaitResponse(this.mEventHandler.obtainMessage(3));
    }

    public void start() {
        this.mHandlerHelper.sendMessageAndAwaitResponse(this.mEventHandler.obtainMessage(1));
    }

    public void stop() {
        this.mHandlerHelper.sendMessageAndAwaitResponse(this.mEventHandler.obtainMessage(2));
    }

    public void release() {
        this.mHandlerHelper.sendMessageAndAwaitResponse(this.mEventHandler.obtainMessage(4));
        this.mHandlerHelper.releaseAllLocks();
    }

    public void resume(CountDownLatch countDownLatch) {
        this.mEventHandler.obtainMessage(6, countDownLatch).sendToTarget();
    }

    public void reset() {
        this.mHandlerHelper.sendMessageAndAwaitResponse(this.mEventHandler.obtainMessage(7));
    }

    public void setMediaMuxer(MediaMuxerWrapper mediaMuxerWrapper) {
        this.mMuxerWrapper = mediaMuxerWrapper;
    }

    public void setMediaMuxerStarted() {
        this.mMuxerState = Track$MuxerState.STARTED;
    }

    public void setMediaMuxerStopped() {
        this.mMuxerState = Track$MuxerState.STOPPED;
    }

    protected boolean isMuxerStarted() {
        return this.mMuxerState == Track$MuxerState.STARTED;
    }

    protected boolean checkFormat(MediaCodecList mediaCodecList, MediaFormat mediaFormat, String str) {
        MediaCodecInfo[] codecInfos = mediaCodecList.getCodecInfos();
        int i = 0;
        boolean z = false;
        while (i < codecInfos.length && !z) {
            String[] supportedTypes = codecInfos[i].getSupportedTypes();
            boolean zIsFormatSupported = z;
            for (int i2 = 0; i2 < supportedTypes.length && !zIsFormatSupported; i2++) {
                if (supportedTypes[i2].equals(str)) {
                    zIsFormatSupported = codecInfos[i].getCapabilitiesForType(str).isFormatSupported(mediaFormat);
                }
            }
            i++;
            z = zIsFormatSupported;
        }
        return z;
    }
}
