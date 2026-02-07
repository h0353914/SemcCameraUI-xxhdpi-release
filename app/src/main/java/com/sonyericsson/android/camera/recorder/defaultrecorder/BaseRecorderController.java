package com.sonyericsson.android.camera.recorder.defaultrecorder;

import android.content.Context;
import android.location.Location;
import android.os.Handler;
import com.sonyericsson.android.camera.device.CameraActionSound;
import com.sonyericsson.android.camera.recorder.RecorderController;
import com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener;
import com.sonyericsson.android.camera.recorder.RecorderController$Result;
import com.sonyericsson.android.camera.recorder.RecorderException;
import com.sonyericsson.android.camera.recorder.RecorderInterface;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnErrorListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnMaxReachedListener;
import com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener;
import com.sonyericsson.android.camera.recorder.RecorderParameters;
import com.sonyericsson.android.camera.recorder.utility.Accessor;
import com.sonyericsson.android.camera.recorder.utility.ReferenceClock;
import com.sonyericsson.android.camera.recorder.utility.ReferenceClock$TickCallback;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageWriteNotifier;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class BaseRecorderController implements RecorderController {
    private static final int TIME_OF_START_SOUND_TO_COMPLETE_IN_MILLI = 300;
    private static final boolean TRACE = true;
    private static final boolean TRACE_FOR_PROGRESS = false;
    private final Handler mCallbackHandler;
    private final Accessor<CameraActionSound> mCameraActionSound;
    private final Context mContext;
    private final Handler mDeviceHandler;
    private boolean mIsAdjustRecordingTimeByRecorderNotification;
    protected boolean mIsCameraErrorDetected;
    private boolean mIsMicrophoneEnabled;
    private final boolean mIsStartSoundRequired;
    private boolean mIsStopSoundAlreadyPlayed;
    private final boolean mIsStopSoundRequired;
    private boolean mIsUserSoundSettingOn;
    private long mLastNotifyDurationMillis;
    private final RecorderController$RecorderListener mListener;
    private long mMaxDurationMillis;
    private final long mMinDurationMillis;
    private final RecorderInterface mRecorder;
    private final ReferenceClock mReferenceClock;
    private final boolean mShouldWaitStartSound;
    private BaseRecorderController$State mState;
    private Storage$StorageWriteNotifier mStorageWriteNotifier;
    private CountDownLatch mWaitUntilWriting;
    protected final Object mStateLock = new Object();
    private final Object mIsStopSoundAlreadyPlayedLock = new Object();
    private final RecorderInterface$OnErrorListener mOnErrorListener = new BaseRecorderController$2(this);
    private final RecorderInterface$OnMaxReachedListener mOnMaxReachedListener = new BaseRecorderController$3(this);
    private final RecorderInterface$RecordTrackListener mAudioTrackListener = new BaseRecorderController$4(this);
    private final RecorderInterface$RecordTrackListener mVideoTrackListener = new BaseRecorderController$5(this);
    private final ReferenceClock$TickCallback mOnTickCallback = new BaseRecorderController$6(this);

    static /* synthetic */ BaseRecorderController$State access$000(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mState;
    }

    static /* synthetic */ void access$100(String str) {
        trace(str);
    }

    static /* synthetic */ void access$1300(BaseRecorderController baseRecorderController) {
        baseRecorderController.displayMaxDuration();
    }

    static /* synthetic */ CountDownLatch access$1400(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mWaitUntilWriting;
    }

    static /* synthetic */ void access$1500(BaseRecorderController baseRecorderController, long j) {
        baseRecorderController.notifyDuration(j);
    }

    static /* synthetic */ ReferenceClock access$1600(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mReferenceClock;
    }

    static /* synthetic */ long access$1700(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mLastNotifyDurationMillis;
    }

    static /* synthetic */ long access$1800(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mMaxDurationMillis;
    }

    static /* synthetic */ ReferenceClock$TickCallback access$1900(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mOnTickCallback;
    }

    static /* synthetic */ boolean access$300(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mShouldWaitStartSound;
    }

    static /* synthetic */ Storage$StorageWriteNotifier access$400(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mStorageWriteNotifier;
    }

    static /* synthetic */ RecorderController$RecorderListener access$500(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mListener;
    }

    static /* synthetic */ boolean access$700(BaseRecorderController baseRecorderController) {
        return baseRecorderController.mIsMicrophoneEnabled;
    }

    static /* synthetic */ void access$800(BaseRecorderController baseRecorderController) {
        baseRecorderController.playStopSound();
    }

    static /* synthetic */ void access$900(BaseRecorderController baseRecorderController, RecorderController$Result recorderController$Result) {
        baseRecorderController.notifyFinishResult(recorderController$Result);
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    protected void disableAdjustRecordingTimeByRecorderNotification() {
        this.mIsAdjustRecordingTimeByRecorderNotification = false;
    }

    private boolean shouldPlayStartSound() {
        return this.mIsStartSoundRequired && this.mIsUserSoundSettingOn;
    }

    private boolean shouldPlayStopSound() {
        return this.mIsStopSoundRequired && this.mIsUserSoundSettingOn;
    }

    protected void changeTo(BaseRecorderController$State baseRecorderController$State) {
        trace("changeTo() " + baseRecorderController$State.name());
        this.mState = baseRecorderController$State;
    }

    protected boolean verifyState(BaseRecorderController$State... baseRecorderController$StateArr) {
        for (BaseRecorderController$State baseRecorderController$State : baseRecorderController$StateArr) {
            if (baseRecorderController$State == this.mState) {
                return true;
            }
        }
        return false;
    }

    protected Context getContext() {
        return this.mContext;
    }

    protected Handler getCallbackHandler() {
        return this.mCallbackHandler;
    }

    protected RecorderInterface getRecorder() {
        return this.mRecorder;
    }

    protected ReferenceClock getReferenceClock() {
        return this.mReferenceClock;
    }

    protected void executeInBackground(Runnable runnable) {
        this.mDeviceHandler.post(runnable);
    }

    public BaseRecorderController(Context context, Accessor<CameraActionSound> accessor, RecorderInterface recorderInterface, Handler handler, RecorderController$RecorderListener recorderController$RecorderListener, long j, int i, Handler handler2, boolean z, boolean z2, boolean z3, boolean z4) {
        trace("BaseRecorderController() E");
        this.mContext = context;
        this.mCameraActionSound = accessor;
        this.mListener = recorderController$RecorderListener;
        this.mCallbackHandler = handler;
        changeTo(BaseRecorderController$State.IDLE);
        this.mReferenceClock = new ReferenceClock(this.mCallbackHandler, this.mOnTickCallback, i);
        this.mDeviceHandler = handler2;
        this.mMinDurationMillis = j;
        this.mIsStartSoundRequired = z;
        this.mShouldWaitStartSound = z2;
        this.mIsStopSoundRequired = z3;
        this.mIsUserSoundSettingOn = z4;
        this.mIsStopSoundAlreadyPlayed = false;
        this.mRecorder = recorderInterface;
        this.mRecorder.setListener(this.mAudioTrackListener, this.mVideoTrackListener, this.mOnErrorListener, this.mOnMaxReachedListener);
        this.mIsAdjustRecordingTimeByRecorderNotification = true;
        trace("BaseRecorderController() X");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public boolean isReady() {
        boolean zVerifyState;
        synchronized (this.mStateLock) {
            zVerifyState = verifyState(BaseRecorderController$State.PREPARED);
        }
        return zVerifyState;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public boolean isPaused() {
        boolean zVerifyState;
        synchronized (this.mStateLock) {
            zVerifyState = verifyState(BaseRecorderController$State.PAUSED);
        }
        return zVerifyState;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public boolean isStarting() {
        boolean zVerifyState;
        synchronized (this.mStateLock) {
            zVerifyState = verifyState(BaseRecorderController$State.STARTING);
        }
        return zVerifyState;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public boolean isRecording() {
        boolean zVerifyState;
        synchronized (this.mStateLock) {
            zVerifyState = verifyState(BaseRecorderController$State.STARTING, BaseRecorderController$State.RECORDING);
        }
        return zVerifyState;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public boolean isStopping() {
        boolean zVerifyState;
        synchronized (this.mStateLock) {
            zVerifyState = verifyState(BaseRecorderController$State.STOPPING, BaseRecorderController$State.RELEASING);
        }
        return zVerifyState;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public long getRecordingTimeMillis() {
        return this.mReferenceClock.elapsedTimeMillis();
    }

    private CameraActionSound getCameraActionSound() {
        return this.mCameraActionSound.get();
    }

    protected void playStartSound() {
        trace("playStartSound() E required:" + shouldPlayStartSound());
        if (!shouldPlayStartSound()) {
            trace("playStartSound() X not required");
            return;
        }
        CameraActionSound cameraActionSound = getCameraActionSound();
        if (cameraActionSound != null) {
            cameraActionSound.play(2, true);
        }
        trace("playStartSound() X");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public boolean prepare(RecorderParameters recorderParameters) {
        trace("prepare() E");
        this.mIsStopSoundAlreadyPlayed = false;
        this.mLastNotifyDurationMillis = 0L;
        synchronized (this.mStateLock) {
            if (!verifyState(BaseRecorderController$State.IDLE)) {
                trace("prepare() X failed : illegal state");
                return false;
            }
            changeTo(BaseRecorderController$State.PREPARED);
            executeInBackground(new BaseRecorderController$PrepareTask(this, recorderParameters));
            trace("prepare() X");
            return true;
        }
    }

    protected boolean prepareInternal(RecorderParameters recorderParameters) {
        trace("prepareInternal() E mic:" + recorderParameters.isMicrophoneEnabled());
        this.mIsMicrophoneEnabled = recorderParameters.isMicrophoneEnabled();
        if (recorderParameters.hasMaxDuration()) {
            this.mMaxDurationMillis = recorderParameters.maxDuration();
        } else {
            this.mMaxDurationMillis = 0L;
        }
        this.mRecorder.reset();
        boolean zPrepare = this.mRecorder.prepare(this.mContext, recorderParameters);
        if (!zPrepare) {
            synchronized (this.mStateLock) {
                changeTo(BaseRecorderController$State.RELEASED);
            }
        }
        trace("prepareInternal() X success:" + zPrepare);
        return zPrepare;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void start() throws RecorderException {
        trace("start() E");
        synchronized (this.mStateLock) {
            if (!verifyState(BaseRecorderController$State.PREPARED)) {
                trace("start() X failed : illegal state");
                throw new RecorderException("Fail to verify state. state:" + this.mState.name());
            }
            playStartSound();
            changeTo(BaseRecorderController$State.STARTING);
            executeInBackground(new BaseRecorderController$StartTask(this, null));
        }
        trace("start() X");
    }

    protected boolean startInternal() throws TimeoutException {
        trace("startInternal() E");
        this.mWaitUntilWriting = new CountDownLatch(1);
        try {
            this.mRecorder.start();
            this.mCallbackHandler.post(new BaseRecorderController$NotifyProgressTask(this, 0L));
            if (this.mIsAdjustRecordingTimeByRecorderNotification) {
                this.mReferenceClock.reset(0L);
            } else {
                this.mReferenceClock.start();
            }
            trace("startInternal() X");
            return true;
        } catch (IOException | IllegalStateException e) {
            trace("startInternal() X failed : " + e.getMessage());
            changeTo(BaseRecorderController$State.RELEASED);
            this.mRecorder.reset();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void stop() throws RecorderException {
        trace("stop() E");
        synchronized (this.mStateLock) {
            if (!verifyState(BaseRecorderController$State.STARTING, BaseRecorderController$State.RECORDING, BaseRecorderController$State.PAUSED)) {
                trace("stop() X failed : illegal state");
                throw new RecorderException("Fail to verify state. state:" + this.mState.name());
            }
            changeTo(BaseRecorderController$State.STOPPING);
            executeInBackground(new BaseRecorderController$StopTask(this, null));
        }
        trace("stop() X");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void stopAudioRecording() {
        getRecorder().stopAudioRecording();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void stopOnCameraError() throws RecorderException {
        trace("stopOnCameraError() E");
        this.mIsCameraErrorDetected = true;
        stop();
        trace("stopOnCameraError() X");
    }

    protected boolean stopInternal() {
        trace("stopInternal() E");
        if (this.mStorageWriteNotifier != null) {
            this.mStorageWriteNotifier = null;
        }
        try {
            try {
                waitUntilFirstVideoFrameWritten();
                this.mReferenceClock.stop();
                if (this.mIsCameraErrorDetected) {
                    this.mRecorder.stopOnCameraError();
                } else {
                    this.mRecorder.stop();
                }
                this.mRecorder.reset();
                trace("stopInternal() X");
                return true;
            } catch (RuntimeException e) {
                trace("stopInternal() X failed : " + e.getMessage());
                this.mRecorder.reset();
                return false;
            }
        } catch (Throwable th) {
            this.mRecorder.reset();
            throw th;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void pause() throws RecorderException {
        trace("pause() E");
        synchronized (this.mStateLock) {
            if (!verifyState(BaseRecorderController$State.STARTING, BaseRecorderController$State.RECORDING)) {
                trace("pause() X failed : illegal state");
                throw new RecorderException("Fail to verify state. state:" + this.mState.name());
            }
            changeTo(BaseRecorderController$State.PAUSED);
            executeInBackground(new BaseRecorderController$PauseTask(this, null));
        }
        trace("pause() X");
    }

    protected boolean pauseInternal() {
        trace("pauseInternal() E");
        try {
            waitUntilFirstVideoFrameWritten();
            this.mReferenceClock.stop();
            this.mRecorder.pause();
            trace("pauseInternal() X");
            return true;
        } catch (RuntimeException e) {
            trace("pauseInternal() X failed : " + e.getMessage());
            this.mRecorder.reset();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void resume() throws RecorderException {
        trace("resume() E");
        synchronized (this.mStateLock) {
            if (!verifyState(BaseRecorderController$State.PAUSED)) {
                trace("resume() X failed : illegal state");
                throw new RecorderException("Fail to verify state. state:" + this.mState.name());
            }
            changeTo(BaseRecorderController$State.RECORDING);
            executeInBackground(new BaseRecorderController$ResumeTask(this, null));
        }
        trace("resume() X");
    }

    protected boolean resumeInternal() {
        trace("resumeInternal() E");
        try {
            this.mRecorder.resume();
            if (!this.mIsAdjustRecordingTimeByRecorderNotification) {
                this.mReferenceClock.resume();
            }
            trace("resumeInternal() X");
            return true;
        } catch (RuntimeException e) {
            trace("resumeInternal() X failed : " + e.getMessage());
            this.mRecorder.reset();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public boolean release() {
        trace("release() E");
        synchronized (this.mStateLock) {
            if (verifyState(BaseRecorderController$State.RELEASING, BaseRecorderController$State.RELEASED)) {
                trace("release() X already released");
                return true;
            }
            if (verifyState(BaseRecorderController$State.STARTING, BaseRecorderController$State.RECORDING, BaseRecorderController$State.PAUSED)) {
                try {
                    stop();
                } catch (RecorderException e) {
                    CamLog.e("release() X failed : " + e.getMessage());
                    return false;
                }
            }
            boolean zVerifyState = verifyState(BaseRecorderController$State.STOPPING, BaseRecorderController$State.IDLE, BaseRecorderController$State.PREPARED);
            changeTo(BaseRecorderController$State.RELEASING);
            if (zVerifyState) {
                executeInBackground(new BaseRecorderController$1(this));
            } else {
                synchronized (this.mStateLock) {
                    changeTo(BaseRecorderController$State.RELEASED);
                }
            }
            trace("release() X success");
            return true;
        }
    }

    protected void releaseInternal() {
        this.mRecorder.release();
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void setLocation(Location location) {
        this.mRecorder.setLocation(location);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void setMaxDurationMillis(long j) {
        this.mRecorder.setMaxDurationMillis(j);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void setMaxFileSizeBytes(long j) {
        this.mRecorder.setMaxFileSizeBytes(j);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void setOrientationHint(int i) {
        this.mRecorder.setOrientationHint(i);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void setOutputFilePath(String str) {
        this.mRecorder.setOutputFilePath(str);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void setUserSoundSetting(boolean z) {
        this.mIsUserSoundSettingOn = z;
    }

    private void playStopSound() {
        CameraActionSound cameraActionSound;
        trace("playStopSound() E required:" + shouldPlayStopSound());
        if (shouldPlayStopSound()) {
            boolean z = false;
            synchronized (this.mIsStopSoundAlreadyPlayedLock) {
                trace("playStopSound() is-already-played:" + this.mIsStopSoundAlreadyPlayed);
                if (!this.mIsStopSoundAlreadyPlayed) {
                    this.mIsStopSoundAlreadyPlayed = true;
                    z = true;
                }
            }
            if (z && (cameraActionSound = getCameraActionSound()) != null) {
                cameraActionSound.play(3, true);
            }
        }
        trace("playStopSound() X");
    }

    protected void waitUntilFirstVideoFrameWritten() {
        trace("waitUntilFirstVideoFrameWritten() E");
        try {
            if (this.mWaitUntilWriting != null) {
                if (!this.mWaitUntilWriting.await(this.mMinDurationMillis, TimeUnit.MILLISECONDS)) {
                    trace("waitUntilFirstVideoFrameWritten() timed-out");
                }
            } else {
                Thread.sleep(this.mMinDurationMillis, 0);
            }
        } catch (InterruptedException unused) {
            trace("waitUntilFirstVideoFrameWritten() interrupted at mWaitUntilWriting.await()");
        }
        trace("waitUntilFirstVideoFrameWritten() X");
    }

    protected void notifyError() {
        this.mCallbackHandler.post(new BaseRecorderController$OnErrorTask(this, null));
    }

    private void notifyFinishResult(RecorderController$Result recorderController$Result) {
        this.mCallbackHandler.post(new BaseRecorderController$NotifyFinishResult(this, recorderController$Result));
    }

    private void notifyDuration(long j) {
        this.mLastNotifyDurationMillis = j;
        if (!this.mIsAdjustRecordingTimeByRecorderNotification || this.mReferenceClock.isMeasuring()) {
            return;
        }
        synchronized (this.mStateLock) {
            if (verifyState(BaseRecorderController$State.STARTING, BaseRecorderController$State.RECORDING)) {
                this.mReferenceClock.reset(j);
                this.mReferenceClock.resume();
            }
        }
        if (this.mStorageWriteNotifier != null) {
            this.mStorageWriteNotifier.notifyWriteStorage();
        }
        this.mListener.onRecordProgress(j);
    }

    private void displayMaxDuration() {
        if (this.mMaxDurationMillis <= 0 || this.mMaxDurationMillis - this.mLastNotifyDurationMillis < 0 || this.mMaxDurationMillis - this.mLastNotifyDurationMillis >= 1000) {
            return;
        }
        this.mCallbackHandler.post(new BaseRecorderController$7(this));
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController
    public void setStorageWriteNotifier(Storage$StorageWriteNotifier storage$StorageWriteNotifier) {
        this.mStorageWriteNotifier = storage$StorageWriteNotifier;
    }
}
