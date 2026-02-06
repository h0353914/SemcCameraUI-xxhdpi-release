package com.sonyericsson.android.camera.device;

import android.os.Handler;
import com.sonyericsson.android.camera.util.CamLog;

class FusionResultChecker extends CaptureResultCheckerBase {
    private static final String TAG = "FusionResultChecker";
    private CameraParameters$FusionResultCallback mCallback;
    private CameraParameters$FusionResult mLatestResult;

    private boolean isInvalidFusionResult(int i, int i2, int i3) {
        boolean z = i3 == 0;
        boolean z2 = i == 2 || i == 3;
        boolean z3 = i2 == 0;
        if (z) {
            return z2 || !z3;
        }
        return false;
    }

    static /* synthetic */ CameraParameters$FusionResultCallback access$000(FusionResultChecker fusionResultChecker) {
        return fusionResultChecker.mCallback;
    }

    public FusionResultChecker(Handler handler, CameraParameters$FusionResultCallback cameraParameters$FusionResultCallback) {
        super(handler);
        this.mCallback = cameraParameters$FusionResultCallback;
        this.mLatestResult = new CameraParameters$FusionResult();
    }

    @Override // com.sonyericsson.android.camera.device.CaptureResultCheckerBase
    public void check(CaptureResultHolder captureResultHolder) {
        CameraParameters$FusionStatus cameraParameters$FusionStatus;
        CameraParameters$FusionCondition cameraParameters$FusionCondition;
        Integer num = (Integer) captureResultHolder.getLatestValue(SomcCaptureResultKeys.SONYMOBILE_CONTROL_PREVIEW_OUTPUT_STREAM_SOURCE);
        if (num == null) {
            num = 0;
        }
        Integer num2 = (Integer) captureResultHolder.getLatestValue(SomcCaptureResultKeys.SONYMOBILE_CONTROL_FUSION_CONDITION);
        if (num2 == null) {
            num2 = 0;
        }
        Integer num3 = (Integer) captureResultHolder.getLatestValue(SomcCaptureResultKeys.SONYMOBILE_CONTROL_FUSION_MODE);
        if (num3 == null) {
            num3 = 0;
        }
        if (isInvalidFusionResult(num.intValue(), num2.intValue(), num3.intValue())) {
            if (CamLog.VERBOSE) {
                CamLog.w("received mismatch fusion result. fusionMode=" + num3 + ", source=" + num + ", fusionCondition=" + num2);
                return;
            }
            return;
        }
        switch (num.intValue()) {
            case 1:
                cameraParameters$FusionStatus = CameraParameters$FusionStatus.SUB_1;
                break;
            case 2:
                cameraParameters$FusionStatus = CameraParameters$FusionStatus.FUSION_MAIN;
                break;
            case 3:
                cameraParameters$FusionStatus = CameraParameters$FusionStatus.FUSION_SUB_1;
                break;
            default:
                cameraParameters$FusionStatus = CameraParameters$FusionStatus.MAIN;
                break;
        }
        switch (num2.intValue()) {
            case 1:
                cameraParameters$FusionCondition = CameraParameters$FusionCondition.CLOSE_TO_SUBJECT;
                break;
            case 2:
                cameraParameters$FusionCondition = CameraParameters$FusionCondition.LENS_COVERED;
                break;
            case 3:
                cameraParameters$FusionCondition = CameraParameters$FusionCondition.LOW_CONTRAST;
                break;
            default:
                cameraParameters$FusionCondition = CameraParameters$FusionCondition.NORMAL;
                break;
        }
        CameraParameters$FusionResult cameraParameters$FusionResult = new CameraParameters$FusionResult(cameraParameters$FusionStatus, cameraParameters$FusionCondition);
        if (cameraParameters$FusionResult.getFusionStatus() == this.mLatestResult.getFusionStatus() && cameraParameters$FusionResult.getFusionCondition() == this.mLatestResult.getFusionCondition()) {
            return;
        }
        this.mLatestResult = cameraParameters$FusionResult;
        this.mHandler.post(new FusionResultChecker$1(this, cameraParameters$FusionResult));
    }

    public CameraParameters$FusionResult getLatestFusionResult() {
        return this.mLatestResult;
    }
}
