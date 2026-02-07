package com.sonyericsson.android.camera.recorder.utility.encoder.source;

import android.media.AudioRecord;
import android.media.MediaCodec;
import android.os.SystemClock;
import com.sonyericsson.android.camera.util.CamLog;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MutableAudioSampleDataSource extends AudioSampleDataSourceBase {
    private static final long AUDIO_READ_INTERVAL_MILLIS = 100;
    private static final long AUDIO_READ_TIME_OUT_DURATION_MILLIS = 5000;
    private static final int BUFFER_DURATION_MILLIS = 2000;
    private int mAudioRecordBuferSize;
    private final ByteBuffer mGarbageBuffer;
    private final int mMinAudioBufferCount;
    private final int mMuteDurationBytes;
    private int mMuteDurationRemainingBytes;
    private int mNotificationCounter;
    private final int mSilentDurationBytes;

    static /* synthetic */ long access$300(MutableAudioSampleDataSource mutableAudioSampleDataSource) {
        return mutableAudioSampleDataSource.enqueueSilentSamples();
    }

    public MutableAudioSampleDataSource(MediaCodec mediaCodec, int i, int i2, int i3, int i4, int i5) {
        super(mediaCodec, i, i2, i3);
        if (i4 < 0 || i5 < 0) {
            throw new IllegalArgumentException("Duration cannot be negative values");
        }
        this.mMuteDurationBytes = ((getSampleRate() * getSampleDataBytes()) * i4) / 1000;
        this.mSilentDurationBytes = ((getSampleRate() * getSampleDataBytes()) * i5) / 1000;
        this.mMinAudioBufferCount = (int) Math.ceil(((double) i4) / 100.0d);
        this.mGarbageBuffer = ByteBuffer.allocateDirect(getBufferSize());
    }

    public void startMute() {
        if (getAudioRecord().getRecordingState() != 3) {
            throw new IllegalStateException("startMute can only be called during recording");
        }
        if (this.mMuteDurationRemainingBytes > 0) {
            throw new IllegalStateException("startMute cannot be called more than once");
        }
        this.mMuteDurationRemainingBytes = this.mMuteDurationBytes;
        sendAudioSamplesToGarbage();
        this.mNotificationCounter = 0;
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.source.AudioSampleDataSourceBase, android.media.AudioRecord$OnRecordPositionUpdateListener
    public void onPeriodicNotification(AudioRecord audioRecord) {
        if (this.mNotificationCounter > this.mMinAudioBufferCount) {
            super.onPeriodicNotification(audioRecord);
        } else {
            this.mNotificationCounter++;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.source.AudioSampleDataSourceBase
    protected int getBufferSize() {
        if (this.mAudioRecordBuferSize == 0) {
            this.mAudioRecordBuferSize = ((2000 * getSampleRate()) * getSampleDataBytes()) / 1000;
            if (this.mAudioRecordBuferSize < getMinBufferSize() * 8) {
                this.mAudioRecordBuferSize = getMinBufferSize() * 8;
            }
        }
        return this.mAudioRecordBuferSize;
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.source.AudioSampleDataSourceBase
    protected int getAudioBufferSize() {
        return (getSampleRate() * getSampleDataBytes()) / 10;
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.source.AudioSampleDataSourceBase
    protected long pushToEncoder(byte[] bArr, int i, boolean z) {
        boolean z2 = false;
        int i2 = 0;
        while (!isCancelled() && !z2) {
            MutableAudioSampleDataSource$DequeuedBuffer mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer = dequeueBuffer();
            if (mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer != null) {
                long currentPresentationTime = getCurrentPresentationTime(i2);
                MutableAudioSampleDataSource$DequeuedBuffer.access$100(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer).put(bArr, i2 + 0, Math.min(MutableAudioSampleDataSource$DequeuedBuffer.access$000(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer), i - i2));
                int iPosition = MutableAudioSampleDataSource$DequeuedBuffer.access$100(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer).position();
                i2 += iPosition;
                boolean z3 = i2 >= i;
                queueInputBuffer(MutableAudioSampleDataSource$DequeuedBuffer.access$200(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer), 0, iPosition, currentPresentationTime, 0);
                z2 = z3;
            }
        }
        if (z) {
            MutableAudioSampleDataSource$DequeuedBuffer mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer2 = dequeueBuffer();
            long currentPresentationTime2 = getCurrentPresentationTime(i2);
            if (mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer2 != null) {
                queueInputBuffer(MutableAudioSampleDataSource$DequeuedBuffer.access$200(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer2), 0, 0, currentPresentationTime2, 4);
            }
        }
        return i2 / getSampleDataBytes();
    }

    private void sendAudioSamplesToGarbage() {
        int i;
        AudioRecord audioRecord = getAudioRecord();
        this.mGarbageBuffer.clear();
        if (this.mNotificationCounter > this.mMinAudioBufferCount) {
            i = audioRecord.read(this.mGarbageBuffer, this.mGarbageBuffer.limit(), 1);
            if (i < this.mMuteDurationRemainingBytes) {
                CamLog.w("Could not read enough audio samples.");
                long jUptimeMillis = SystemClock.uptimeMillis();
                while (SystemClock.uptimeMillis() - jUptimeMillis < 5000) {
                    i += audioRecord.read(this.mGarbageBuffer, this.mMuteDurationRemainingBytes - i, 1);
                    CamLog.w("Re-try to read until audio samples are retrieved enough. read-bytes:" + i);
                    if (i >= this.mMuteDurationRemainingBytes) {
                        break;
                    }
                    try {
                        Thread.sleep(100L, 0);
                    } catch (InterruptedException unused) {
                        CamLog.e("Interrupt skipping audio samples in mute range.");
                    }
                }
            }
            int i2 = i - this.mMuteDurationRemainingBytes;
            if (i2 < 0) {
                CamLog.e("Could not read enough audio samples by re-trying. read-bytes:" + i + " remain-bytes:" + this.mMuteDurationRemainingBytes);
                i2 = 0;
            }
            byte[] bArr = new byte[i2];
            this.mGarbageBuffer.get(bArr, 0, i2);
            requestToEnqueueSamples(bArr, false);
        } else {
            i = audioRecord.read(this.mGarbageBuffer, this.mMuteDurationRemainingBytes, 0);
        }
        this.mMuteDurationRemainingBytes -= i;
        requestToEnqueueSilentSamples();
    }

    private void requestToEnqueueSamples(byte[] bArr, boolean z) {
        getBackgroundWorker().getHandler().post(new MutableAudioSampleDataSource$1(this, bArr, z));
    }

    private void requestToEnqueueSilentSamples() {
        getBackgroundWorker().getHandler().post(new MutableAudioSampleDataSource$2(this));
    }

    private long enqueueSilentSamples() {
        int i = this.mSilentDurationBytes;
        byte[] bArr = null;
        int i2 = 0;
        while (i > 0) {
            MutableAudioSampleDataSource$DequeuedBuffer mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer = dequeueBuffer();
            if (mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer != null) {
                if (bArr == null || bArr.length < MutableAudioSampleDataSource$DequeuedBuffer.access$000(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer)) {
                    bArr = new byte[MutableAudioSampleDataSource$DequeuedBuffer.access$000(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer)];
                }
                MutableAudioSampleDataSource$DequeuedBuffer.access$100(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer).put(bArr, 0, Math.min(MutableAudioSampleDataSource$DequeuedBuffer.access$000(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer), i));
                int iPosition = MutableAudioSampleDataSource$DequeuedBuffer.access$100(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer).position();
                queueInputBuffer(MutableAudioSampleDataSource$DequeuedBuffer.access$200(mutableAudioSampleDataSource$DequeuedBufferDequeueBuffer), 0, iPosition, getCurrentPresentationTime(i2), 0);
                i2 += iPosition;
                i -= iPosition;
                if (CamLog.VERBOSE) {
                    CamLog.d(i + " silent bytes are remaining to write");
                }
            }
        }
        return i2 / getSampleDataBytes();
    }

    public long getCurrentPresentationTimeMillis() {
        return getPresentationTime(0L) / 1000;
    }

    private long getCurrentPresentationTime(long j) {
        return getPresentationTime(j / ((long) getSampleDataBytes()));
    }

    private MutableAudioSampleDataSource$DequeuedBuffer dequeueBuffer() {
        int iDequeueInputBuffer = getCodec().dequeueInputBuffer(100000L);
        if (iDequeueInputBuffer < 0) {
            if (!CamLog.VERBOSE) {
                return null;
            }
            CamLog.d("  dequeue input buffer failed");
            return null;
        }
        return new MutableAudioSampleDataSource$DequeuedBuffer(iDequeueInputBuffer, getCodec().getInputBuffer(iDequeueInputBuffer));
    }

    private void queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        getCodec().queueInputBuffer(i, i2, i3, j, i4);
        if (CamLog.VERBOSE) {
            CamLog.d("  Buffer index " + i + " is queued");
        }
    }
}
