package com.sonymobile.android.media.internal;

import android.media.MediaCodec;
import android.media.MediaCodec$CodecException;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;

class VideoTrack extends Track {
    private static final int ENCODER_REQUEST_SYNC_FRAME = 0;
    private static final int I_FRAME_INTERVAL = 1;
    static final String TAG = "VideoTrack";
    private static final long TIME_OUT_STOPPING_MILLISECONDS = 1000;
    private static final long WAIT_FOR_MEDIA_MUXER_START_TIMED_OUT_US = 10000000;
    private final Handler mCallback;
    private final VideoTrack$CodecHandler mCodecHandler;
    private int mFrameDropCounter;
    private int mHeight;
    private final Track$MuxerHandler mMuxerHandler;
    private Surface mSourceSurface;
    private String mVideoMime;
    private int mWidth;
    private final String[] videoMimeTypes = {"", "video/3gpp", "video/avc", "video/mp4v-es", "video/x-vnd.on2.vp8", "video/hevc", "video/x-vnd.on2.vp9"};
    private int mFrameRate = 30;
    protected int mEncodingProfile = 0;
    protected int mEncodingLevel = 0;
    private int mBitRateMode = -1;
    private int mColorStandard = -1;
    private int mColorTransfer = -1;
    private int mColorRange = -1;
    private long mFrameInterval = 1000000 / this.mFrameRate;
    private long mFirstVideoFrameTimeUs = -1;
    private long mRecordedDurationAtStopUs = -1;
    private long mLastRecordedVideoTimestampUs = 0;
    private boolean mWaitForKeyFrame = false;
    private long mVideoOffset = 0;
    private boolean mKeyFrameRequested = false;
    private boolean mPauseResumeFlag = false;
    private boolean mFirstCodecConfigFrame = true;

    static /* synthetic */ String access$100(VideoTrack videoTrack) {
        return videoTrack.mVideoMime;
    }

    static /* synthetic */ long access$1000(VideoTrack videoTrack) {
        return videoTrack.mLastRecordedVideoTimestampUs;
    }

    static /* synthetic */ long access$1002(VideoTrack videoTrack, long j) {
        videoTrack.mLastRecordedVideoTimestampUs = j;
        return j;
    }

    static /* synthetic */ long access$1100(VideoTrack videoTrack) {
        return videoTrack.mFrameInterval;
    }

    static /* synthetic */ Handler access$1200(VideoTrack videoTrack) {
        return videoTrack.mCallback;
    }

    static /* synthetic */ Track$MuxerHandler access$1300(VideoTrack videoTrack) {
        return videoTrack.mMuxerHandler;
    }

    static /* synthetic */ VideoTrack$CodecHandler access$1400(VideoTrack videoTrack) {
        return videoTrack.mCodecHandler;
    }

    static /* synthetic */ boolean access$200(VideoTrack videoTrack) {
        return videoTrack.mFirstCodecConfigFrame;
    }

    static /* synthetic */ boolean access$202(VideoTrack videoTrack, boolean z) {
        videoTrack.mFirstCodecConfigFrame = z;
        return z;
    }

    static /* synthetic */ long access$300(VideoTrack videoTrack) {
        return videoTrack.mFirstVideoFrameTimeUs;
    }

    static /* synthetic */ long access$302(VideoTrack videoTrack, long j) {
        videoTrack.mFirstVideoFrameTimeUs = j;
        return j;
    }

    static /* synthetic */ long access$400(VideoTrack videoTrack) {
        return videoTrack.mVideoOffset;
    }

    static /* synthetic */ long access$402(VideoTrack videoTrack, long j) {
        videoTrack.mVideoOffset = j;
        return j;
    }

    static /* synthetic */ long access$500(VideoTrack videoTrack) {
        return videoTrack.mRecordedDurationAtStopUs;
    }

    static /* synthetic */ boolean access$600(VideoTrack videoTrack) {
        return videoTrack.mPauseResumeFlag;
    }

    static /* synthetic */ boolean access$602(VideoTrack videoTrack, boolean z) {
        videoTrack.mPauseResumeFlag = z;
        return z;
    }

    static /* synthetic */ boolean access$700(VideoTrack videoTrack) {
        return videoTrack.mWaitForKeyFrame;
    }

    static /* synthetic */ boolean access$702(VideoTrack videoTrack, boolean z) {
        videoTrack.mWaitForKeyFrame = z;
        return z;
    }

    static /* synthetic */ boolean access$800(VideoTrack videoTrack) {
        return videoTrack.mKeyFrameRequested;
    }

    static /* synthetic */ boolean access$802(VideoTrack videoTrack, boolean z) {
        videoTrack.mKeyFrameRequested = z;
        return z;
    }

    static /* synthetic */ int access$908(VideoTrack videoTrack) {
        int i = videoTrack.mFrameDropCounter;
        videoTrack.mFrameDropCounter = i + 1;
        return i;
    }

    VideoTrack(Handler handler, HandlerThread handlerThread, HandlerThread handlerThread2, HandlerThread handlerThread3) {
        this.mCodecHandler = new VideoTrack$CodecHandler(this, handlerThread.getLooper());
        this.mEventHandler = new Track$EventHandler(this, handlerThread2.getLooper());
        this.mMuxerHandler = new Track$MuxerHandler(this, handlerThread3.getLooper());
        this.mHandlerHelper = new HandlerHelper();
        this.mCallback = handler;
        this.mState = Track$States.STOPPED;
    }

    public Surface getSurface() {
        return this.mSourceSurface;
    }

    void setInputSurface(Surface surface) {
        this.mSourceSurface = surface;
        if (this.mEncoder != null) {
            this.mEncoder.setInputSurface(surface);
        }
    }

    void setVideoSize(int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
    }

    void setFrameRate(int i) {
        this.mFrameRate = i;
        this.mFrameInterval = this.mFrameRate != 0 ? 1000000 / this.mFrameRate : 30000L;
    }

    void setEncodingProfileLevel(int i, int i2) {
        this.mEncodingProfile = i;
        this.mEncodingLevel = i2;
    }

    void setBitRateMode(int i) {
        this.mBitRateMode = i;
    }

    void setColorAspects(int i, int i2, int i3) {
        this.mColorStandard = i;
        this.mColorTransfer = i2;
        this.mColorRange = i3;
    }

    void setVideoEncoder(int i) {
        if (i < 0 || i > this.videoMimeTypes.length - 1) {
            this.mVideoMime = null;
        } else {
            this.mVideoMime = this.videoMimeTypes[i];
        }
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doPause() {
        this.mPauseLatch.countDown();
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doPrepare() {
        MediaCodecList mediaCodecList = new MediaCodecList(0);
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(this.mVideoMime, this.mWidth, this.mHeight);
        mediaFormatCreateVideoFormat.setInteger("bitrate", this.mEncodingBitRate);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", this.mFrameRate);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        if (this.mOperatingRate > 0) {
            mediaFormatCreateVideoFormat.setInteger("operating-rate", this.mOperatingRate);
            mediaFormatCreateVideoFormat.setString("ts-schema", "android.generic.1+0");
        }
        if (this.mEncodingProfile == 0) {
            if (this.mVideoMime.equals("video/avc")) {
                if (this.mWidth >= 1280 && this.mHeight >= 720) {
                    mediaFormatCreateVideoFormat.setInteger("profile", 8);
                } else {
                    mediaFormatCreateVideoFormat.setInteger("profile", 1);
                }
                mediaFormatCreateVideoFormat.setInteger("level", 1);
            }
        } else {
            mediaFormatCreateVideoFormat.setInteger("profile", this.mEncodingProfile);
            mediaFormatCreateVideoFormat.setInteger("level", this.mEncodingLevel == 0 ? 1 : this.mEncodingLevel);
        }
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        if (this.mColorStandard >= 0 && this.mColorTransfer >= 0 && this.mColorRange >= 0) {
            mediaFormatCreateVideoFormat.setInteger("color-standard", this.mColorStandard);
            mediaFormatCreateVideoFormat.setInteger("color-transfer", this.mColorTransfer);
            mediaFormatCreateVideoFormat.setInteger("color-range", this.mColorRange);
        } else {
            if (this.mWidth >= 1280 && this.mHeight >= 720) {
                mediaFormatCreateVideoFormat.setInteger("color-standard", 1);
            } else {
                mediaFormatCreateVideoFormat.setInteger("color-standard", 4);
            }
            mediaFormatCreateVideoFormat.setInteger("color-transfer", 3);
            mediaFormatCreateVideoFormat.setInteger("color-range", 2);
        }
        if (checkFormat(mediaCodecList, mediaFormatCreateVideoFormat, this.mVideoMime)) {
            try {
                this.mEncoder = MediaCodec.createByCodecName(mediaCodecList.findEncoderForFormat(mediaFormatCreateVideoFormat));
                this.mEncoder.setCallback(new VideoTrack$VideoEncoderCallback(this, null));
                try {
                    if (this.mBitRateMode >= 0) {
                        mediaFormatCreateVideoFormat.setInteger("bitrate-mode", this.mBitRateMode);
                    }
                    this.mEncoder.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
                    if (this.mSourceSurface == null) {
                        this.mSourceSurface = this.mEncoder.createInputSurface();
                    } else {
                        this.mEncoder.setInputSurface(this.mSourceSurface);
                    }
                    this.mBufferList = new LinkedBlockingDeque<>();
                    return;
                } catch (MediaCodec$CodecException unused) {
                    Log.e("VideoTrack", "Failed to configure MediaCodec");
                    this.mCallback.obtainMessage(1, 4, 1).sendToTarget();
                    return;
                }
            } catch (IOException | IllegalArgumentException | NullPointerException e) {
                Log.e("VideoTrack", "Unable to create encoder", e);
                this.mCallback.obtainMessage(1, 4, 1).sendToTarget();
                return;
            }
        }
        Log.e("VideoTrack", "Video format is not supported " + mediaFormatCreateVideoFormat.toString());
        this.mCallback.obtainMessage(1, 4, 2);
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doStart() {
        this.mEncoder.start();
        this.mFrameDropCounter = 0;
        this.mFirstVideoFrameTimeUs = -1L;
        this.mRecordedDurationAtStopUs = -1L;
        this.mPauseResumeFlag = false;
        this.mWaitForKeyFrame = false;
        this.mKeyFrameRequested = false;
        this.mFirstCodecConfigFrame = true;
        this.mState = Track$States.STARTED;
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doRelease() {
        if (this.mEncoder != null) {
            this.mEncoder.release();
            this.mEncoder = null;
        }
        this.mMuxerHandler.removeMessages(104);
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doResume(CountDownLatch countDownLatch) {
        countDownLatch.countDown();
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doReset() {
        if (this.mEncoder != null) {
            if (this.mMuxerState == Track$MuxerState.STARTED) {
                this.mState = Track$States.STOPPING;
                this.mEncoder.signalEndOfInputStream();
            } else if (this.mState != Track$States.STOPPED) {
                this.mState = Track$States.STOPPED;
                try {
                    this.mEncoder.stop();
                } catch (IllegalStateException e) {
                    Log.e("VideoTrack", e + " occurred. Maybe MediaCodec is released.", e);
                }
            }
        }
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doStop() {
        this.mRecordedDurationAtStopUs = this.mClock.getDurationAtStopUs();
        this.mCodecHandler.sendEmptyMessageDelayed(111, 1000L);
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doWriteOutputBuffer() throws IllegalStateException {
        ByteBuffer outputBuffer;
        if (this.mBufferList.isEmpty() || this.mState == Track$States.STOPPED || !isMuxerStarted()) {
            return;
        }
        Track$EncodedBuffer track$EncodedBufferRemoveFirst = this.mBufferList.removeFirst();
        if (track$EncodedBufferRemoveFirst.containsCopiedBuffer) {
            outputBuffer = track$EncodedBufferRemoveFirst.byteBuffer;
        } else {
            outputBuffer = this.mEncoder.getOutputBuffer(track$EncodedBufferRemoveFirst.bufferIndex);
        }
        if (outputBuffer != null && track$EncodedBufferRemoveFirst.bufferInfo.size != 0) {
            this.mMuxerWrapper.writeSampleData(this.mMuxerTrackIndex, outputBuffer, track$EncodedBufferRemoveFirst.bufferInfo);
        }
        if (!track$EncodedBufferRemoveFirst.containsCopiedBuffer) {
            this.mEncoder.releaseOutputBuffer(track$EncodedBufferRemoveFirst.bufferIndex, false);
        }
        if ((track$EncodedBufferRemoveFirst.bufferInfo.flags & 4) != 0) {
            this.mEncoder.stop();
            this.mCallback.sendMessage(this.mCallback.obtainMessage(101));
            this.mState = Track$States.STOPPED;
            this.mMuxerWrapper.endTrack(this.mMuxerTrackIndex);
        }
    }

    @Override // com.sonymobile.android.media.internal.Track
    public void setMediaMuxerStarted() {
        super.setMediaMuxerStarted();
        this.mMuxerHandler.obtainMessage(110).sendToTarget();
    }
}
