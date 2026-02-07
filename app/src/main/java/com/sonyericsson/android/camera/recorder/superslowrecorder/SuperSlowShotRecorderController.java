package com.sonyericsson.android.camera.recorder.superslowrecorder;

import android.content.Context;
import android.os.Handler;
import android.util.Pair;
import com.sonyericsson.android.camera.device.CameraActionSound;
import com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener;
import com.sonyericsson.android.camera.recorder.RecorderParameters;
import com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController$State;
import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController;
import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController$CallbackLock;
import com.sonyericsson.android.camera.recorder.utility.Accessor;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$DataSpace;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$RecordingParameters;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class SuperSlowShotRecorderController extends DefaultRecorderController {
    private static final int MEDIA_FORMAT_OPERATING_RATE = 120;
    private static long MIN_VIDEO_DURATION_MILLIS = 0;
    private static final long START_RECORDING_TIME_OUT_MILLIS = 10000;
    private static final String THREAD_NAME = "SSS_RECORDER_PREPARE";
    private static final boolean TRACE = true;
    private final OnSuperSlowRecordingFinishedListener mOnSuperSlowRecordingFinishedListener;
    private final DefaultRecorderController$CallbackLock mPrepareSuperSlowRecordingCallbackLock;
    private Future<Boolean> mPrepareTask;
    private final ExecutorService mPrepareTaskExecutor;
    private final DefaultRecorderController$CallbackLock mStartSuperSlowRecordingCallbackLock;
    private final int mSuperSlowFrameNum;
    private final int mSuperSlowFrameRate;

    static /* synthetic */ void access$100(String str) {
        trace(str);
    }

    static /* synthetic */ void access$200(SuperSlowShotRecorderController superSlowShotRecorderController) {
        superSlowShotRecorderController.notifyError();
    }

    static /* synthetic */ boolean access$301(SuperSlowShotRecorderController superSlowShotRecorderController, RecorderParameters recorderParameters) {
        return super.prepareInternal(recorderParameters);
    }

    static /* synthetic */ void access$400(SuperSlowShotRecorderController superSlowShotRecorderController) {
        superSlowShotRecorderController.notifyError();
    }

    static /* synthetic */ boolean access$500(SuperSlowShotRecorderController superSlowShotRecorderController) {
        return superSlowShotRecorderController.startBypassCamera();
    }

    static /* synthetic */ void access$600(SuperSlowShotRecorderController superSlowShotRecorderController) {
        superSlowShotRecorderController.notifyError();
    }

    static /* synthetic */ OnSuperSlowRecordingFinishedListener access$700(SuperSlowShotRecorderController superSlowShotRecorderController) {
        return superSlowShotRecorderController.mOnSuperSlowRecordingFinishedListener;
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    public SuperSlowShotRecorderController(Context context, Accessor<CameraActionSound> accessor, Accessor<BypassCamera> accessor2, RecorderController$RecorderListener recorderController$RecorderListener, OnSuperSlowRecordingFinishedListener onSuperSlowRecordingFinishedListener, Handler handler, int i, Handler handler2, boolean z, int i2, int i3) {
        super(context, accessor, accessor2, new VariableSourceMediaRecorder(120), recorderController$RecorderListener, MIN_VIDEO_DURATION_MILLIS, handler, i, handler2, true, false, false, z, true);
        this.mPrepareTaskExecutor = ThreadUtil.buildExecutor("SSS_RECORDER_PREPARE");
        trace("SuperSlowShotRecorderController() E");
        this.mSuperSlowFrameRate = i2;
        this.mSuperSlowFrameNum = i3;
        this.mOnSuperSlowRecordingFinishedListener = onSuperSlowRecordingFinishedListener;
        ((VariableSourceMediaRecorder) getRecorder()).setInputDataSourceFactory(new SuperSlowShotRecorderController$SuperSlowSourceFactory(null));
        this.mPrepareSuperSlowRecordingCallbackLock = new DefaultRecorderController$CallbackLock();
        this.mStartSuperSlowRecordingCallbackLock = new DefaultRecorderController$CallbackLock();
        trace("SuperSlowShotRecorderController() X");
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController
    protected boolean prepareCallBack() {
        trace("prepareCallBack() E");
        if (!super.prepareCallBack()) {
            trace("prepareCallBack() X failed.");
            return false;
        }
        getBypassCamera().setSuperSlowCallbacks(new SuperSlowShotRecorderController$PrepareSuperSlowRecordingCallbackImpl(this.mPrepareSuperSlowRecordingCallbackLock), new SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl(this.mStartSuperSlowRecordingCallbackLock));
        trace("prepareCallBack() X");
        return true;
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController, com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController
    protected boolean prepareInternal(RecorderParameters recorderParameters) {
        this.mPrepareTask = this.mPrepareTaskExecutor.submit(new SuperSlowShotRecorderController$PrepareTask(this, recorderParameters));
        return true;
    }

    private boolean waitForPrepareCompleted() {
        if (this.mPrepareTask == null) {
            CamLog.e("PrepareTask is not submitted.");
            return false;
        }
        try {
            return this.mPrepareTask.get().booleanValue();
        } catch (InterruptedException unused) {
            CamLog.e("PrepareTask is interrupted.");
            return false;
        } catch (ExecutionException e) {
            CamLog.e("Exception is thrown in PrepareTask.  cause:" + e.getCause().getMessage());
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController
    protected void releaseInternal() {
        waitForPrepareCompleted();
        this.mPrepareTaskExecutor.shutdown();
        super.releaseInternal();
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController
    protected boolean prepareBypassCamera(RecorderParameters recorderParameters) {
        trace("prepareBypassCamera() E frame-rate:" + this.mSuperSlowFrameRate + " frame-num" + this.mSuperSlowFrameNum);
        CountDownLatch countDownLatchRequestLatch = this.mPrepareSuperSlowRecordingCallbackLock.requestLatch();
        try {
            try {
                getBypassCamera().requestPrepareSuperSlowRecording(getRecorder().getSurface(), new BypassCamera$RecordingParameters(new BypassCamera$DataSpace(0, 0, 0)));
                countDownLatchRequestLatch.await();
                this.mPrepareSuperSlowRecordingCallbackLock.release();
                trace("prepareBypassCamera() X");
                return true;
            } catch (InterruptedException | RuntimeException e) {
                trace("prepareBypassCamera() X failed : " + e.getMessage());
                this.mPrepareSuperSlowRecordingCallbackLock.release();
                return false;
            }
        } catch (Throwable th) {
            this.mPrepareSuperSlowRecordingCallbackLock.release();
            throw th;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController, com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController
    protected boolean startInternal() throws TimeoutException {
        trace("startInternal() E");
        if (!waitForPrepareCompleted()) {
            return false;
        }
        CountDownLatch countDownLatchRequestLatch = this.mStartSuperSlowRecordingCallbackLock.requestLatch();
        try {
            getBypassCamera().requestStartSuperSlowRecording();
            try {
                try {
                    trace("startInternal() recorder.start E");
                    getRecorder().start();
                    trace("startInternal() recorder.start X");
                    trace("startInternal() reference-clock.start E");
                    getReferenceClock().start();
                    trace("startInternal() reference-clock.start X");
                    try {
                        trace("startInternal() latch.await E");
                    } catch (InterruptedException e) {
                        trace("startInternal() X failed : " + e.getMessage());
                    }
                    if (!countDownLatchRequestLatch.await(10000L, TimeUnit.MILLISECONDS)) {
                        changeTo(BaseRecorderController$State.RELEASED);
                        if (CamLog.DEBUG) {
                            throw new TimeoutException("Callback of slow motion frame is not sent over 5s from Bypasscamera");
                        }
                        return false;
                    }
                    trace("startInternal() latch.await X");
                    trace("startInternal() post callback E");
                    getCallbackHandler().post(new SuperSlowShotRecorderController$1(this));
                    trace("startInternal() post callback X");
                    trace("startInternal() X");
                    return true;
                } catch (IOException | IllegalStateException e2) {
                    trace("startInternal() X failed : " + e2.getMessage());
                    getRecorder().reset();
                    try {
                        trace("startInternal() latch.await E");
                    } catch (InterruptedException e3) {
                        trace("startInternal() X failed : " + e3.getMessage());
                    }
                    if (!countDownLatchRequestLatch.await(10000L, TimeUnit.MILLISECONDS)) {
                        changeTo(BaseRecorderController$State.RELEASED);
                        if (CamLog.DEBUG) {
                            throw new TimeoutException("Callback of slow motion frame is not sent over 5s from Bypasscamera");
                        }
                        return false;
                    }
                    trace("startInternal() latch.await X");
                    return false;
                }
            } catch (Throwable th) {
                try {
                    trace("startInternal() latch.await E");
                } catch (InterruptedException e4) {
                    trace("startInternal() X failed : " + e4.getMessage());
                }
                if (!countDownLatchRequestLatch.await(10000L, TimeUnit.MILLISECONDS)) {
                    changeTo(BaseRecorderController$State.RELEASED);
                    if (CamLog.DEBUG) {
                        throw new TimeoutException("Callback of slow motion frame is not sent over 5s from Bypasscamera");
                    }
                    return false;
                }
                trace("startInternal() latch.await X");
                throw th;
            }
        } catch (RuntimeException e5) {
            trace("startInternal() X failed : " + e5.getMessage());
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController
    protected Pair<Boolean, CountDownLatch> stopBypassCamera() {
        return Pair.create(true, null);
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController, com.sonyericsson.android.camera.recorder.RecorderController
    public long getRecordingTimeMillis() {
        if (verifyState(BaseRecorderController$State.STOPPING, BaseRecorderController$State.RELEASING)) {
            return (1000 * this.mSuperSlowFrameNum) / 30;
        }
        return super.getRecordingTimeMillis();
    }
}
