package com.sonyericsson.android.camera.recorder.utility.encoder;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class MediaEncoder {
    public static final String TAG = "MediaEncoder";
    private static final String THREAD_NAME_DATA_WRITE_FOR_EACH_STREAMS = "ME#WriteData";
    private static final String THREAD_NAME_MAIN_TASK = "ME#MainTask";
    private static final String THREAD_NAME_WAIT_TO_COMPLETE_ENCODING = "ME#WaitFinish";
    private static boolean TRACE = true;
    private CountDownLatch mEncoderFinishSignal;
    private CountDownLatch mEncoderFormatChangedSignal;
    private ExecutorService mInputEncodedDataThreadPool;
    private final InputDataInfo[] mInputStreams;
    private ExecutorService mMainTaskExecutor;
    private final MediaMuxerWrapper mMuxer;
    private CountDownLatch mMuxerStartedSignal;
    private final MediaEncoder$EncodingStateNotifier mNotifier;
    private CountDownLatch mRequestFinishSignal;
    private final Runnable mMainTask = new MediaEncoder$1(this);
    private final EncodedDataWriteTask$EncoderStateListener mEncodedDataWriteListener = new MediaEncoder$2(this);
    private final Runnable mWaitRequestFinishSignalTask = new MediaEncoder$3(this);

    static /* synthetic */ boolean access$000() {
        return TRACE;
    }

    static /* synthetic */ CountDownLatch access$100(MediaEncoder mediaEncoder) {
        return mediaEncoder.mEncoderFormatChangedSignal;
    }

    static /* synthetic */ CountDownLatch access$102(MediaEncoder mediaEncoder, CountDownLatch countDownLatch) {
        mediaEncoder.mEncoderFormatChangedSignal = countDownLatch;
        return countDownLatch;
    }

    static /* synthetic */ InputDataInfo[] access$200(MediaEncoder mediaEncoder) {
        return mediaEncoder.mInputStreams;
    }

    static /* synthetic */ CountDownLatch access$300(MediaEncoder mediaEncoder) {
        return mediaEncoder.mMuxerStartedSignal;
    }

    static /* synthetic */ CountDownLatch access$302(MediaEncoder mediaEncoder, CountDownLatch countDownLatch) {
        mediaEncoder.mMuxerStartedSignal = countDownLatch;
        return countDownLatch;
    }

    static /* synthetic */ CountDownLatch access$400(MediaEncoder mediaEncoder) {
        return mediaEncoder.mEncoderFinishSignal;
    }

    static /* synthetic */ CountDownLatch access$402(MediaEncoder mediaEncoder, CountDownLatch countDownLatch) {
        mediaEncoder.mEncoderFinishSignal = countDownLatch;
        return countDownLatch;
    }

    static /* synthetic */ CountDownLatch access$500(MediaEncoder mediaEncoder) {
        return mediaEncoder.mRequestFinishSignal;
    }

    public MediaEncoder(InputDataInfo[] inputDataInfoArr, String str, FileDescriptor fileDescriptor, MediaEncoder$StateListener mediaEncoder$StateListener) throws IOException {
        this.mNotifier = mediaEncoder$StateListener == null ? null : new MediaEncoder$EncodingStateNotifier(mediaEncoder$StateListener);
        if (fileDescriptor != null) {
            this.mMuxer = new MediaMuxerWrapper(fileDescriptor, 0, this.mNotifier);
        } else {
            this.mMuxer = new MediaMuxerWrapper(str, 0, this.mNotifier);
        }
        this.mInputStreams = inputDataInfoArr;
        this.mRequestFinishSignal = null;
        this.mInputEncodedDataThreadPool = ThreadUtil.buildPoolExecutor("ME#WriteData", this.mInputStreams.length);
    }

    public void start() {
        this.mMainTaskExecutor = ThreadUtil.buildExecutor("ME#MainTask");
        synchronized (this) {
            if (this.mRequestFinishSignal != null) {
                throw new IllegalStateException();
            }
            this.mRequestFinishSignal = new CountDownLatch(1);
        }
        this.mMainTaskExecutor.execute(this.mMainTask);
    }

    public void stop() {
        if (this.mMainTaskExecutor != null && !this.mMainTaskExecutor.isShutdown()) {
            this.mMainTaskExecutor.shutdown();
        }
        synchronized (this) {
            if (this.mRequestFinishSignal == null) {
                return;
            }
            this.mRequestFinishSignal.countDown();
        }
    }

    public void release() {
        shutdownEncodedDataThreadPool();
        releaseInputDataSource();
        releaseEncoders();
        try {
            releaseMuxer();
        } catch (IllegalStateException unused) {
            CamLog.e("IllegalStateException occur at releaseMuxer().");
        }
    }

    void startMediaMuxerAfterEncodedFormatIsFixed() throws InterruptedException {
        if (TRACE) {
            CamLog.d("startMediaMuxer() E");
        }
        this.mEncoderFormatChangedSignal.await();
        if (TRACE) {
            CamLog.d("muxer.start E");
        }
        this.mMuxer.start();
        if (TRACE) {
            CamLog.d("muxer.start X");
        }
        this.mMuxerStartedSignal.countDown();
        if (TRACE) {
            CamLog.d("startMediaMuxer() X");
        }
    }

    void startEncodedDataWriteTasks() {
        if (TRACE) {
            CamLog.d("startEncodedDataWriteTasks() E");
        }
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            this.mInputEncodedDataThreadPool.execute(new EncodedDataWriteTask(this.mMuxer, inputDataInfo.codec, this.mEncodedDataWriteListener, inputDataInfo.mimeType()));
        }
        if (TRACE) {
            CamLog.d("startEncodedDataWriteTasks() X");
        }
    }

    private void shutdownEncodedDataThreadPool() {
        this.mInputEncodedDataThreadPool.shutdown();
    }

    void startEncoders() {
        if (TRACE) {
            CamLog.d("startEncoders() E");
        }
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            inputDataInfo.codec.start();
        }
        if (TRACE) {
            CamLog.d("startEncoders() X");
        }
    }

    void stopEncoders() {
        if (TRACE) {
            CamLog.d("stopEncoders() E");
        }
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            inputDataInfo.codec.stop();
        }
        if (TRACE) {
            CamLog.d("stopEncoders() X");
        }
    }

    void releaseEncoders() {
        if (TRACE) {
            CamLog.d("releaseEncoders() E");
        }
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            inputDataInfo.codec.release();
        }
        if (TRACE) {
            CamLog.d("releaseEncoders() X");
        }
    }

    void startInputDataSource() {
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            inputDataInfo.source.start();
        }
    }

    void stopInputDataSource() throws InterruptedException {
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            inputDataInfo.source.stop();
        }
    }

    void releaseInputDataSource() {
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            inputDataInfo.source.release();
        }
    }

    void stopMuxer() {
        if (TRACE) {
            CamLog.d("stopMuxer() E");
        }
        this.mMuxer.stop();
        if (TRACE) {
            CamLog.d("stopMuxer() X");
        }
    }

    void releaseMuxer() {
        if (TRACE) {
            CamLog.d("releaseMuxer() E");
        }
        this.mMuxer.release();
        if (TRACE) {
            CamLog.d("releaseMuxer() X");
        }
    }

    void waitToCompleteEncoding() {
        if (TRACE) {
            CamLog.d("waitToCompleteEncoding() E");
        }
        ExecutorService executorServiceBuildExecutor = ThreadUtil.buildExecutor("ME#WaitFinish");
        Future<?> futureSubmit = executorServiceBuildExecutor.submit(this.mWaitRequestFinishSignalTask);
        try {
            if (TRACE) {
                CamLog.d("EncoderFinishSignal.await");
            }
            this.mEncoderFinishSignal.await();
            if (TRACE) {
                CamLog.d("EncoderFinishSignal.await FINISHED");
            }
        } catch (InterruptedException unused) {
            CamLog.e("mEncoderFinishSignal is interrupted");
        }
        futureSubmit.cancel(true);
        executorServiceBuildExecutor.shutdown();
        if (TRACE) {
            CamLog.d("waitToCompleteEncoding() X");
        }
    }

    void sendOnStartedEvent() {
        if (this.mNotifier != null) {
            this.mNotifier.notifyOnStarted();
        }
    }

    void sendOnFinishedEvent(boolean z) {
        synchronized (this) {
            this.mRequestFinishSignal = null;
        }
        if (this.mNotifier != null) {
            this.mNotifier.notifyOnFinished(z);
        }
    }

    public void setMaxDuration(long j) {
        this.mMuxer.setMaxDuration(j);
    }

    public void setMaxFileSize(long j) {
        this.mMuxer.setMaxFileSize(j);
    }

    public void setOrientationHint(int i) {
        this.mMuxer.setOrientationHint(i);
    }

    public void setLocation(float f, float f2) {
        this.mMuxer.setLocation(f, f2);
    }
}
