package com.sonyericsson.android.camera.recorder.defaultrecorder;

import android.content.Context;
import android.os.Handler;
import android.util.Pair;
import com.sonyericsson.android.camera.device.CameraActionSound;
import com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface;
import com.sonyericsson.android.camera.recorder.RecorderParameters;
import com.sonyericsson.android.camera.recorder.RecorderParameters$DataSpace;
import com.sonyericsson.android.camera.recorder.utility.Accessor;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$DataSpace;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$RecordingParameters;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeoutException;

public class DefaultRecorderController extends BaseRecorderController {
    private static final long STOP_PROCESS_INTERVAL_MILLISECONDS = 100;
    private static final boolean TRACE = true;
    private final Accessor<BypassCamera> mBypassCamera;
    private final DefaultRecorderController$CallbackLock mPrepareVideoRecordingCallbackLock;
    private final DefaultRecorderController$CallbackLock mStartVideoRecordingCallbackLock;
    private final DefaultRecorderController$CallbackLock mStopVideoRecordingCallbackLock;

    static /* synthetic */ void access$000(String str) {
        trace(str);
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    public DefaultRecorderController(Context context, Accessor<CameraActionSound> accessor, Accessor<BypassCamera> accessor2, RecorderInterface recorderInterface, RecorderController$RecorderListener recorderController$RecorderListener, long j, Handler handler, int i, Handler handler2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        super(context, accessor, recorderInterface, handler, recorderController$RecorderListener, j, i, handler2, z, z2, z3, z4);
        trace("DefaultRecorderController() E");
        this.mBypassCamera = accessor2;
        this.mPrepareVideoRecordingCallbackLock = new DefaultRecorderController$CallbackLock();
        this.mStartVideoRecordingCallbackLock = new DefaultRecorderController$CallbackLock();
        this.mStopVideoRecordingCallbackLock = new DefaultRecorderController$CallbackLock();
        if (z5) {
            disableAdjustRecordingTimeByRecorderNotification();
        }
        trace("DefaultRecorderController() X");
    }

    protected BypassCamera getBypassCamera() {
        return this.mBypassCamera.get();
    }

    protected boolean prepareCallBack() {
        trace("prepareCallBack() E");
        if (getBypassCamera() == null) {
            trace("prepareCallBack() X failed.");
            return false;
        }
        getBypassCamera().setVideoCallbacks(new DefaultRecorderController$PrepareVideoRecordingCallbackImpl(this.mPrepareVideoRecordingCallbackLock), new DefaultRecorderController$StartVideoRecordingCallbackImpl(this.mStartVideoRecordingCallbackLock), new DefaultRecorderController$StopVideoRecordingCallbackImpl(this.mStopVideoRecordingCallbackLock));
        trace("prepareCallBack() X");
        return true;
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController
    protected boolean prepareInternal(RecorderParameters recorderParameters) {
        trace("prepareInternal() E");
        if (!prepareCallBack()) {
            trace("prepareInternal() X failed");
            return false;
        }
        if (!super.prepareInternal(recorderParameters)) {
            trace("prepareInternal() X failed");
            return false;
        }
        if (!prepareBypassCamera(recorderParameters)) {
            trace("prepareInternal() X failed");
            return false;
        }
        trace("prepareInternal() X");
        return true;
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController
    protected boolean startInternal() throws TimeoutException {
        trace("startInternal() E");
        if (!startBypassCamera()) {
            trace("startInternal() X failed");
            return false;
        }
        if (!startRecorder()) {
            trace("startInternal() X failed");
            return false;
        }
        trace("startInternal() X");
        return true;
    }

    protected boolean startRecorder() {
        try {
            return super.startInternal();
        } catch (TimeoutException e) {
            if (CamLog.DEBUG) {
                throw new RuntimeException(e);
            }
            notifyError();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.defaultrecorder.BaseRecorderController
    protected boolean stopInternal() {
        trace("stopInternal() E");
        if (this.mIsCameraErrorDetected) {
            if (!super.stopInternal()) {
                trace("stopInternal() X failed");
                return false;
            }
        } else {
            RecorderInterface recorder = getRecorder();
            try {
                waitUntilFirstVideoFrameWritten();
                getReferenceClock().stop();
                if (recorder.isAsyncStopSupported()) {
                    recorder.stopAsync();
                } else {
                    recorder.stop();
                }
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    trace("sleep interrupted : " + e.getMessage());
                }
                Pair<Boolean, CountDownLatch> pairStopBypassCamera = stopBypassCamera();
                if (!((Boolean) pairStopBypassCamera.first).booleanValue()) {
                    return false;
                }
                CountDownLatch countDownLatch = (CountDownLatch) pairStopBypassCamera.second;
                if (recorder.isAsyncStopSupported()) {
                    recorder.waitUntilStopCompleted();
                }
                if (countDownLatch != null) {
                    try {
                        countDownLatch.await();
                        this.mStopVideoRecordingCallbackLock.release();
                    } catch (InterruptedException unused) {
                        CamLog.e("stopBypassCameraLatch.await() interrupted");
                    }
                }
            } catch (RuntimeException e2) {
                CamLog.e("stopInternal() X failed : " + e2.getMessage());
                return false;
            } finally {
                recorder.reset();
            }
            recorder.reset();
        }
        trace("stopInternal() X");
        return true;
    }

    protected boolean prepareBypassCamera(RecorderParameters recorderParameters) {
        trace("prepareBypassCamera() E");
        CountDownLatch countDownLatchRequestLatch = this.mPrepareVideoRecordingCallbackLock.requestLatch();
        try {
            try {
                getBypassCamera().requestPrepareVideoRecording(getRecorder().getSurface(), new BypassCamera$RecordingParameters(convertDataSpace(recorderParameters.dataSpace())));
                countDownLatchRequestLatch.await();
                this.mPrepareVideoRecordingCallbackLock.release();
                trace("prepareBypassCamera() X");
                return true;
            } catch (InterruptedException | RuntimeException e) {
                trace("prepareBypassCamera() X failed : " + e.getMessage());
                this.mPrepareVideoRecordingCallbackLock.release();
                return false;
            }
        } catch (Throwable th) {
            this.mPrepareVideoRecordingCallbackLock.release();
            throw th;
        }
    }

    protected boolean startBypassCamera() {
        trace("startBypassCamera() E");
        CountDownLatch countDownLatchRequestLatch = this.mStartVideoRecordingCallbackLock.requestLatch();
        try {
            try {
                getBypassCamera().requestStartVideoRecording();
                countDownLatchRequestLatch.await();
                this.mStartVideoRecordingCallbackLock.release();
                trace("startBypassCamera() X");
                return true;
            } catch (InterruptedException | RuntimeException e) {
                trace("startBypassCamera() X failed : " + e.getMessage());
                this.mStartVideoRecordingCallbackLock.release();
                return false;
            }
        } catch (Throwable th) {
            this.mStartVideoRecordingCallbackLock.release();
            throw th;
        }
    }

    protected Pair<Boolean, CountDownLatch> stopBypassCamera() {
        trace("stopBypassCamera() E");
        CountDownLatch countDownLatchRequestLatch = this.mStopVideoRecordingCallbackLock.requestLatch();
        try {
            getBypassCamera().requestStopVideoRecording();
            return Pair.create(true, countDownLatchRequestLatch);
        } catch (RuntimeException unused) {
            return Pair.create(false, null);
        } finally {
            trace("stopBypassCamera() X");
        }
    }

    private BypassCamera$DataSpace convertDataSpace(RecorderParameters$DataSpace recorderParameters$DataSpace) {
        return new BypassCamera$DataSpace(recorderParameters$DataSpace.standard, recorderParameters$DataSpace.transfer, recorderParameters$DataSpace.range);
    }
}
