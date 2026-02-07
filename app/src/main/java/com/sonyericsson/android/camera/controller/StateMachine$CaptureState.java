package com.sonyericsson.android.camera.controller;

/* JADX INFO: loaded from: classes.dex */
public enum StateMachine$CaptureState {
    STATE_NONE(false, false, false, false, false),
    STATE_INITIALIZE(false, false, false, false, false),
    STATE_RESUME(false, false, false, false, false),
    STATE_CAMERA_SWITCHING(false, false, false, false, false),
    STATE_PHOTO_BASE(false, false, false, false, false),
    STATE_PHOTO_READY(true, true, true, true, false),
    STATE_PHOTO_READY_FOR_RECORDING(false, false, false, false, false),
    STATE_PREPARE_FOR_RECORDING(false, false, false, false, false),
    STATE_CAPTURE_COUNTDOWN(true, false, false, false, false),
    STATE_OPERATION_RESTRICTED(true, false, false, true, false),
    STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START(false, false, false, false, false),
    STATE_PHOTO_AF_SEARCH(false, false, false, false, false),
    STATE_PHOTO_AF_DONE(false, false, false, false, false),
    STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE(false, false, false, false, false),
    STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE(false, false, false, false, false),
    STATE_PHOTO_CAPTURE(false, false, false, false, false),
    STATE_BURST_CAPTURE(true, false, false, false, false),
    STATE_VIDEO_RECORDING(true, false, false, false, true),
    STATE_VIDEO_CAPTURE_WHILE_RECORDING(false, false, false, false, true),
    STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING(false, false, false, false, false),
    STATE_VIDEO_STORE(false, false, false, false, true),
    STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION(true, false, false, false, true),
    STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION(true, false, false, false, true),
    STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE(true, false, false, false, true),
    STATE_VIDEO_STOPPING(true, false, false, false, true),
    STATE_PAUSE(false, true, false, false, false),
    STATE_WARNING(true, true, false, true, false),
    STATE_FINALIZE(false, false, false, false, false),
    STATE_VIDEO_RECORDING_PAUSING(true, false, false, false, true),
    STATE_VIDEO_READY(true, true, false, true, false),
    STATE_MODE_CHANGING(false, true, false, false, false),
    STATE_WAITING_PRE_PROCESS_DONE(false, false, false, false, false),
    STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE(false, false, false, false, false),
    STATE_CROPPING(false, true, false, false, false),
    STATE_FATAL(false, false, false, false, false);

    private final boolean mCanApplicationBeFinished;
    private final boolean mCanHandleAsynchronizedTask;
    private final boolean mCanHandleWearableCaptureRequest;
    private final boolean mIsMenuAvailable;
    private final boolean mIsRecordingState;

    static /* synthetic */ boolean access$13700(StateMachine$CaptureState stateMachine$CaptureState) {
        return stateMachine$CaptureState.isRecording();
    }

    static /* synthetic */ boolean access$14200(StateMachine$CaptureState stateMachine$CaptureState) {
        return stateMachine$CaptureState.canHandleWearableCaptureRequest();
    }

    static /* synthetic */ boolean access$14300(StateMachine$CaptureState stateMachine$CaptureState) {
        return stateMachine$CaptureState.canHandleAsynchronizedTask();
    }

    static /* synthetic */ boolean access$15600(StateMachine$CaptureState stateMachine$CaptureState) {
        return stateMachine$CaptureState.canApplicationBeFinished();
    }

    static /* synthetic */ boolean access$15700(StateMachine$CaptureState stateMachine$CaptureState) {
        return stateMachine$CaptureState.isMenuAvailable();
    }

    StateMachine$CaptureState(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.mCanHandleAsynchronizedTask = z;
        this.mCanApplicationBeFinished = z2;
        this.mCanHandleWearableCaptureRequest = z3;
        this.mIsMenuAvailable = z4;
        this.mIsRecordingState = z5;
    }

    private boolean canHandleAsynchronizedTask() {
        return this.mCanHandleAsynchronizedTask;
    }

    private boolean canApplicationBeFinished() {
        return this.mCanApplicationBeFinished;
    }

    private synchronized boolean canHandleWearableCaptureRequest() {
        return this.mCanHandleWearableCaptureRequest;
    }

    private boolean isMenuAvailable() {
        return this.mIsMenuAvailable;
    }

    private boolean isRecording() {
        return this.mIsRecordingState;
    }
}
