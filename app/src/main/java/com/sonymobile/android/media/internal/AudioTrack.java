package com.sonymobile.android.media.internal;

import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes.dex */
class AudioTrack extends Track implements ClockInterface {
    private static final int ENCODING_PCM_SETTING = 2;
    private static final String HW_AAC_ENCODER = "OMX.qcom.audio.encoder.aac";
    private static final boolean HW_AAC_ENCODER_AVAILABLE = true;
    private static final int HW_ENCODER_BITRATE = 156000;
    private static final int INIT_PAUSE_ARRAY_SIZE = 100;
    private static final int MAX_AUDIO_BITRATE = 156000;
    private static final int MIN_STOP_AUDIO_DURATION_US = 2000000;
    protected static final String TAG = "AudioTrack";
    private String mAudioMime;
    private long mAudioOffset;
    private boolean mAudioRecord;
    private final AudioTrack$AudioRecordHandler mAudioRecordHandler;
    private final HandlerThread mAudioRecordThread;
    private int mAudioSource;
    private int mBytesPerSample;
    private final Handler mCallback;
    private long mClockTotalPauseDurationUs;
    private final AudioTrack$CodecHandler mCodecHandler;
    private int mInputBufferSize;
    private final Track$MuxerHandler mMuxerHandler;
    private int mPauseArrayIndex;
    private long[] mPauseResumeIndices;
    private AudioRecord mAudioRecorder = null;
    private int mAudioSamplingRate = 44100;
    private int mNumAudioChannels = 2;
    private int mAudioBitRate = 156000;
    private boolean mEosFlagged = false;
    private int mStartVolumeDelayUs = 0;
    private final String[] audioMimeTypes = {"", "audio/3gpp", "audio/amr-wb", "audio/mp4a-latm", "audio/mp4a-latm", "audio/mp4a-latm", "audio/vorbis"};
    private long mAudioDurationUs = 0;
    private long mClockStartTimeUs = -1;
    private long mClockPauseTimeUs = -1;
    private long mClockResumeTimeUs = -1;
    private long mClockStopTimeUs = -1;
    private boolean mFirstCodecFrame = true;
    private boolean mStopAudioRecording = false;

    static /* synthetic */ long access$100(AudioTrack audioTrack) {
        return audioTrack.mAudioDurationUs;
    }

    static /* synthetic */ AudioTrack$AudioRecordHandler access$1000(AudioTrack audioTrack) {
        return audioTrack.mAudioRecordHandler;
    }

    static /* synthetic */ long access$102(AudioTrack audioTrack, long j) {
        audioTrack.mAudioDurationUs = j;
        return j;
    }

    static /* synthetic */ int access$1100(AudioTrack audioTrack) {
        return audioTrack.mStartVolumeDelayUs;
    }

    static /* synthetic */ boolean access$1200(AudioTrack audioTrack) {
        return audioTrack.mFirstCodecFrame;
    }

    static /* synthetic */ boolean access$1202(AudioTrack audioTrack, boolean z) {
        audioTrack.mFirstCodecFrame = z;
        return z;
    }

    static /* synthetic */ Track$MuxerHandler access$1300(AudioTrack audioTrack) {
        return audioTrack.mMuxerHandler;
    }

    static /* synthetic */ AudioTrack$CodecHandler access$1400(AudioTrack audioTrack) {
        return audioTrack.mCodecHandler;
    }

    static /* synthetic */ long access$200(AudioTrack audioTrack) {
        return audioTrack.mAudioOffset;
    }

    static /* synthetic */ int access$300(AudioTrack audioTrack) {
        return audioTrack.mInputBufferSize;
    }

    static /* synthetic */ int access$302(AudioTrack audioTrack, int i) {
        audioTrack.mInputBufferSize = i;
        return i;
    }

    static /* synthetic */ AudioRecord access$400(AudioTrack audioTrack) {
        return audioTrack.mAudioRecorder;
    }

    static /* synthetic */ AudioRecord access$402(AudioTrack audioTrack, AudioRecord audioRecord) {
        audioTrack.mAudioRecorder = audioRecord;
        return audioRecord;
    }

    static /* synthetic */ int access$500(AudioTrack audioTrack) {
        return audioTrack.mNumAudioChannels;
    }

    static /* synthetic */ int access$600(AudioTrack audioTrack) {
        return audioTrack.mBytesPerSample;
    }

    static /* synthetic */ int access$700(AudioTrack audioTrack) {
        return audioTrack.mAudioSamplingRate;
    }

    static /* synthetic */ boolean access$800(AudioTrack audioTrack) {
        return audioTrack.mEosFlagged;
    }

    static /* synthetic */ boolean access$802(AudioTrack audioTrack, boolean z) {
        audioTrack.mEosFlagged = z;
        return z;
    }

    static /* synthetic */ Handler access$900(AudioTrack audioTrack) {
        return audioTrack.mCallback;
    }

    AudioTrack(int i, Handler handler, HandlerThread handlerThread, HandlerThread handlerThread2, HandlerThread handlerThread3, boolean z) {
        this.mAudioSource = 0;
        this.mBytesPerSample = 2;
        this.mAudioRecord = true;
        this.mAudioSource = i;
        this.mCodecHandler = new AudioTrack$CodecHandler(this, handlerThread.getLooper());
        this.mEventHandler = new Track$EventHandler(this, handlerThread2.getLooper());
        this.mMuxerHandler = new Track$MuxerHandler(this, handlerThread3.getLooper());
        this.mAudioRecordThread = new HandlerThread("AudioRecord", -1);
        this.mAudioRecordThread.start();
        this.mAudioRecordHandler = new AudioTrack$AudioRecordHandler(this, this.mAudioRecordThread.getLooper());
        this.mHandlerHelper = new HandlerHelper();
        this.mCallback = handler;
        this.mAudioMime = this.audioMimeTypes[3];
        this.mState = Track$States.STOPPED;
        this.mBytesPerSample = 2;
        this.mAudioRecord = z;
    }

    protected void stopAudioRecording() {
        this.mStopAudioRecording = true;
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doPause() {
        this.mState = Track$States.PAUSED;
        if (this.mAudioRecord || this.mIsPauseLatchDown) {
            return;
        }
        this.mPauseLatch.countDown();
        this.mIsPauseLatchDown = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.sonymobile.android.media.internal.Track
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void doPrepare() {
        int i;
        int i2;
        boolean z = false;
        MediaCodecList mediaCodecList = new MediaCodecList(0);
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(this.mAudioMime, this.mAudioSamplingRate, this.mNumAudioChannels);
        mediaFormatCreateAudioFormat.setInteger("bitrate", this.mAudioBitRate);
        if (this.mOperatingRate > 0) {
            mediaFormatCreateAudioFormat.setInteger("operating-rate", this.mOperatingRate);
        }
        if (checkFormat(mediaCodecList, mediaFormatCreateAudioFormat, this.mAudioMime)) {
            try {
                if (this.mNumAudioChannels == 1) {
                    i2 = 16;
                } else {
                    if (this.mNumAudioChannels != 2) {
                        i = 1;
                        this.mInputBufferSize = AudioRecord.getMinBufferSize(this.mAudioSamplingRate, this.mNumAudioChannels, 2) * 2;
                        this.mAudioRecorder = new AudioRecord(this.mAudioSource, this.mAudioSamplingRate, i, 2, this.mInputBufferSize);
                        if (this.mAudioMime.equals("audio/mp4a-latm")) {
                            try {
                                this.mEncoder = MediaCodec.createByCodecName("OMX.qcom.audio.encoder.aac");
                                z = true;
                            } catch (IOException | NullPointerException e) {
                                Log.e("AudioTrack", "Unable to create encoder", e);
                                this.mCallback.obtainMessage(1, 4, 2).sendToTarget();
                                return;
                            } catch (IllegalArgumentException unused) {
                            }
                        }
                        if (!z) {
                            this.mAudioBitRate = 156000;
                            mediaFormatCreateAudioFormat.setInteger("bitrate", this.mAudioBitRate);
                        } else {
                            try {
                                this.mEncoder = MediaCodec.createByCodecName(mediaCodecList.findEncoderForFormat(mediaFormatCreateAudioFormat));
                            } catch (IOException | IllegalArgumentException | NullPointerException e2) {
                                Log.e("AudioTrack", "Unable to create encoder", e2);
                                this.mCallback.obtainMessage(1, 4, 2).sendToTarget();
                                return;
                            }
                        }
                        this.mBufferList = new LinkedBlockingDeque<>();
                        this.mEncoder.setCallback(new AudioTrack$AudioEncoderCallback(this, null));
                        this.mEncoder.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
                        return;
                    }
                    i2 = 12;
                }
                this.mInputBufferSize = AudioRecord.getMinBufferSize(this.mAudioSamplingRate, this.mNumAudioChannels, 2) * 2;
                this.mAudioRecorder = new AudioRecord(this.mAudioSource, this.mAudioSamplingRate, i, 2, this.mInputBufferSize);
                if (this.mAudioMime.equals("audio/mp4a-latm")) {
                }
                if (!z) {
                }
                this.mBufferList = new LinkedBlockingDeque<>();
                this.mEncoder.setCallback(new AudioTrack$AudioEncoderCallback(this, null));
                this.mEncoder.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
                return;
            } catch (IllegalArgumentException e3) {
                Log.e("AudioTrack", "Unable to create AudioRecord", e3);
                this.mCallback.obtainMessage(1, 4, 0).sendToTarget();
                return;
            }
            i = i2;
        } else {
            Log.e("AudioTrack", "Audio format is not supported " + mediaFormatCreateAudioFormat.toString());
            this.mCallback.obtainMessage(1, 4, 2).sendToTarget();
        }
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doStart() {
        this.mStopAudioRecording = false;
        if (this.mAudioRecord) {
            this.mHandlerHelper.sendMessageAndAwaitResponse(this.mAudioRecordHandler.obtainMessage(109));
        } else {
            this.mCallback.obtainMessage(1, 11, 0).sendToTarget();
        }
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doStop() {
        if (this.mAudioRecord) {
            this.mHandlerHelper.sendMessageAndAwaitResponse(this.mAudioRecordHandler.obtainMessage(107));
        } else {
            this.mCallback.sendMessage(this.mCallback.obtainMessage(103));
        }
    }

    void setAudioBitRate(int i) {
        if (i < 156000) {
            this.mAudioBitRate = i;
        }
    }

    void setAudioChannels(int i) {
        this.mNumAudioChannels = i;
    }

    void setAudioSamplingRate(int i) {
        this.mAudioSamplingRate = i;
    }

    void setAudioEncoder(int i) {
        if (i < 0 || i > this.audioMimeTypes.length - 1) {
            this.mAudioMime = null;
        } else {
            this.mAudioMime = this.audioMimeTypes[i];
        }
    }

    @Override // com.sonymobile.android.media.internal.Track
    public void doRelease() {
        if (this.mAudioRecord) {
            this.mMuxerHandler.removeMessages(104);
            this.mAudioRecordHandler.removeMessages(102);
            this.mHandlerHelper.sendMessageAndAwaitResponse(this.mAudioRecordHandler.obtainMessage(107));
            this.mHandlerHelper.sendMessageAndAwaitResponse(this.mAudioRecordHandler.obtainMessage(108));
        }
        this.mAudioRecordThread.quitSafely();
        if (this.mEncoder != null) {
            this.mEncoder.release();
            this.mEncoder = null;
        }
        this.mState = Track$States.STOPPED;
    }

    void adjustAudioTimeStamp(long j) {
        this.mAudioOffset = j * 1000;
    }

    void adjustStartVolume(int i) {
        this.mStartVolumeDelayUs = i * 1000;
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doResume(CountDownLatch countDownLatch) {
        this.mState = Track$States.STARTED;
        countDownLatch.countDown();
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doReset() {
        if (this.mState == Track$States.STOPPED || !this.mAudioRecord) {
            return;
        }
        this.mHandlerHelper.sendMessageAndAwaitResponse(this.mAudioRecordHandler.obtainMessage(107));
    }

    @Override // com.sonymobile.android.media.internal.Track
    protected void doWriteOutputBuffer() throws IllegalStateException {
        ByteBuffer outputBuffer;
        if (this.mClock.isStarted() && !this.mBufferList.isEmpty() && isMuxerStarted()) {
            Track$EncodedBuffer track$EncodedBufferRemove = this.mBufferList.remove();
            if (track$EncodedBufferRemove.containsCopiedBuffer) {
                outputBuffer = track$EncodedBufferRemove.byteBuffer;
            } else {
                outputBuffer = this.mEncoder.getOutputBuffer(track$EncodedBufferRemove.bufferIndex);
            }
            if (outputBuffer != null && (!this.mStopAudioRecording || track$EncodedBufferRemove.bufferInfo.presentationTimeUs < 2000000)) {
                this.mMuxerWrapper.writeSampleData(this.mMuxerTrackIndex, outputBuffer, track$EncodedBufferRemove.bufferInfo);
            }
            if (!track$EncodedBufferRemove.containsCopiedBuffer) {
                this.mEncoder.releaseOutputBuffer(track$EncodedBufferRemove.bufferIndex, false);
            }
            if ((track$EncodedBufferRemove.bufferInfo.flags & 4) != 0) {
                this.mEncoder.stop();
                this.mCallback.sendMessage(this.mCallback.obtainMessage(103));
                this.mState = Track$States.STOPPED;
                this.mMuxerWrapper.endTrack(this.mMuxerTrackIndex);
            }
        }
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getCurrentTimeUs() {
        if (this.mClockStartTimeUs < 0) {
            return this.mClockStartTimeUs;
        }
        if (this.mClockPauseTimeUs > this.mClockResumeTimeUs) {
            return getDurationAtPauseUs();
        }
        return (getSystemTimeUs() - this.mClockStartTimeUs) - this.mClockTotalPauseDurationUs;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public void resetClock() {
        this.mClockStartTimeUs = -1L;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public void setStartTime() {
        this.mClockStartTimeUs = getSystemTimeUs();
        this.mPauseArrayIndex = 0;
        this.mPauseResumeIndices = new long[100];
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getStartTimeUs() {
        return this.mClockStartTimeUs;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getSystemTimeUs() {
        return System.nanoTime() / 1000;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public boolean isStarted() {
        return this.mClockStartTimeUs > -1;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getRecordedDurationUs() {
        return this.mAudioDurationUs;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public void pauseClock() {
        this.mClockPauseTimeUs = System.nanoTime() / 1000;
        if (this.mPauseArrayIndex % 2 != 0) {
            return;
        }
        this.mPauseResumeIndices[this.mPauseArrayIndex] = this.mClockPauseTimeUs - this.mClockStartTimeUs;
        this.mPauseArrayIndex++;
        if (this.mPauseArrayIndex >= this.mPauseResumeIndices.length) {
            this.mPauseResumeIndices = Arrays.copyOf(this.mPauseResumeIndices, this.mPauseResumeIndices.length * 2);
        }
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public void resumeClock() {
        this.mClockResumeTimeUs = System.nanoTime() / 1000;
        if (this.mPauseArrayIndex % 2 == 0) {
            return;
        }
        this.mClockTotalPauseDurationUs += this.mClockResumeTimeUs - this.mClockPauseTimeUs;
        this.mPauseResumeIndices[this.mPauseArrayIndex] = this.mClockResumeTimeUs - this.mClockStartTimeUs;
        this.mPauseArrayIndex++;
        if (this.mPauseArrayIndex >= this.mPauseResumeIndices.length) {
            this.mPauseResumeIndices = Arrays.copyOf(this.mPauseResumeIndices, this.mPauseResumeIndices.length * 2);
        }
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public boolean isPausedAt(long j) {
        int iBinarySearch = Arrays.binarySearch(this.mPauseResumeIndices, 0, this.mPauseArrayIndex, j);
        if (iBinarySearch >= 0) {
            if (iBinarySearch % 2 == 0) {
                return true;
            }
        } else if (iBinarySearch % 2 == 0) {
            return true;
        }
        return false;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getDurationAtPauseUs() {
        return (this.mClockPauseTimeUs - this.mClockStartTimeUs) - this.mClockTotalPauseDurationUs;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getDurationAtStopUs() {
        return (this.mClockStopTimeUs - this.mClockStartTimeUs) - this.mClockTotalPauseDurationUs;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getTotalPausedDurationUs() {
        return this.mClockTotalPauseDurationUs;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public void stopClock() {
        this.mClockStopTimeUs = System.nanoTime() / 1000;
    }

    @Override // com.sonymobile.android.media.internal.ClockInterface
    public long getStopTimeUs() {
        return this.mClockStopTimeUs;
    }

    @Override // com.sonymobile.android.media.internal.Track
    public void setMediaMuxerStarted() {
        super.setMediaMuxerStarted();
        this.mMuxerHandler.obtainMessage(110).sendToTarget();
    }
}
