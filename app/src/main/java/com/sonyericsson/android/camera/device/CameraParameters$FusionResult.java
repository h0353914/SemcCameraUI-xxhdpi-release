package com.sonyericsson.android.camera.device;

public class CameraParameters$FusionResult {
    private CameraParameters$FusionCondition mFusionCondition;
    private CameraParameters$FusionStatus mFusionStatus;

    public CameraParameters$FusionResult() {
        this.mFusionStatus = CameraParameters$FusionStatus.UNKNOWN;
        this.mFusionCondition = CameraParameters$FusionCondition.NORMAL;
    }

    public CameraParameters$FusionResult(CameraParameters$FusionStatus cameraParameters$FusionStatus, CameraParameters$FusionCondition cameraParameters$FusionCondition) {
        this.mFusionStatus = cameraParameters$FusionStatus;
        this.mFusionCondition = cameraParameters$FusionCondition;
    }

    public CameraParameters$FusionStatus getFusionStatus() {
        return this.mFusionStatus;
    }

    public CameraParameters$FusionCondition getFusionCondition() {
        return this.mFusionCondition;
    }

    public String toString() {
        return "[FusionStatus=" + this.mFusionStatus + "][FusionCondition=" + this.mFusionCondition + "]";
    }
}
