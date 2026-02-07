package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
public enum Event$CaptureOperation implements Event$UserOperation {
    EMPTY(0, false),
    SHOOTING(1, true),
    RECORDING(2, false),
    SHOOTING_RECORDING(SHOOTING.mValue | RECORDING.mValue, false),
    BURST(4, false),
    SHOOTING_BURST(SHOOTING.mValue | BURST.mValue, false),
    RECORDING_BURST(RECORDING.mValue | BURST.mValue, false),
    SHOOTING_RECORDING_BURST((SHOOTING.mValue | RECORDING.mValue) | BURST.mValue, false),
    VIEWER(8, false),
    SHOOTING_VIEWER(SHOOTING.mValue | VIEWER.mValue, false),
    RECORDING_VIEWER(RECORDING.mValue | VIEWER.mValue, false),
    SHOOTING_RECORDING_VIEWER((SHOOTING.mValue | RECORDING.mValue) | VIEWER.mValue, false),
    BURST_VIEWER(BURST.mValue | VIEWER.mValue, false),
    SHOOTING_BURST_VIEWER((SHOOTING.mValue | BURST.mValue) | VIEWER.mValue, false),
    RECORDING_BURST_VIEWER((RECORDING.mValue | BURST.mValue) | VIEWER.mValue, false),
    SHOOTING_RECORDING_BURST_VIEWER(((SHOOTING.mValue | RECORDING.mValue) | BURST.mValue) | VIEWER.mValue, false);

    private final boolean mIsShooting;
    private final int mValue;

    Event$CaptureOperation(int i, boolean z) {
        this.mValue = i;
        this.mIsShooting = z;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.Event$UserOperation
    public int getValue() {
        return this.mValue;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.Event$UserOperation
    public boolean isShooting() {
        return this.mIsShooting;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.Event$UserOperation
    public Event$UserOperation getViewer() {
        return VIEWER;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.Event$UserOperation
    public Event$Category getCategory() {
        return Event$Category.CAPTURE_OPERATION;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.Event$UserOperation
    public Event$UserOperation updateOperation(Event$UserOperation event$UserOperation) {
        int value = this.mValue | event$UserOperation.getValue();
        for (Event$CaptureOperation event$CaptureOperation : values()) {
            if (event$CaptureOperation.mValue == value) {
                return event$CaptureOperation;
            }
        }
        return null;
    }
}
