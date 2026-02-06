package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CaptureRequest;
import android.media.ImageReader;
import android.support.annotation.WorkerThread;
import android.view.Surface;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus$Value;
import java.util.ArrayList;
import java.util.Arrays;

@WorkerThread
class CameraController$SetRepeatingRequestTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private static final int REPEATING_BURST_COUNT = 3;
    private final CameraController$CaptureSessionCallback mCaptureSessionCallback;
    private final Surface mCaptureSurface;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$SetRepeatingRequestTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, ImageReader imageReader, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, imageReader);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$SetRepeatingRequestTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, ImageReader imageReader) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
        this.mCaptureSurface = imageReader != null ? imageReader.getSurface() : null;
        this.mCaptureSessionCallback = new CameraController$CaptureSessionCallback(cameraController, cameraDeviceHandler$CameraSessionId, true, null);
        setPerformancefLog(PerfLog.SET_REPEATING_REQUEST_TASK);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        switch (CameraController$2.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[this.this$0.getCameraDeviceStatus().ordinal()]) {
            case 1:
            case 2:
            case 4:
                return false;
            case 3:
                return true;
            case 5:
                return (!getOpenCloseStatusInfo().isErrorCaused() && getOpenCloseStatusInfo().isCloseCameraTaskRequested()) ? false : false;
            default:
                throw new IllegalStateException("Failed due to wrong status in SetRepeatingRequestTask. status: " + this.this$0.getCameraDeviceStatus());
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        DeviceStatus$Value deviceStatus$Value;
        if (CameraController.access$2500(this.this$0) == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Preview surface is not created, so the request is refused.");
                return;
            }
            return;
        }
        if (!CameraController.access$2500(this.this$0).isValid()) {
            this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
            if (CamLog.DEBUG) {
                CamLog.d("Preview surface is not valid, so the request is refused.");
                return;
            }
            return;
        }
        if (CameraController.access$2400(this.this$0) != null) {
            try {
                CameraController.access$2400(this.this$0).addSurface(CameraController.access$2500(this.this$0));
                try {
                    CameraController.access$2200(this.this$0).finalizeOutputConfigurations(Arrays.asList(CameraController.access$2400(this.this$0)));
                    CameraController.access$2402(this.this$0, null);
                } catch (CameraAccessException unused) {
                    CamLog.e("setRepeatingRequest: finalizeOutputConfigurations failed.");
                    CameraController.access$1500(this.this$0, getSessionId(), getOpenCloseStatusInfo(), CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
                    return;
                } catch (IllegalArgumentException e) {
                    if (!CameraController.access$2500(this.this$0).isValid()) {
                        CamLog.w("SetRepeatingRequestTask : Preview surface is not valid, so the request is refused.");
                        return;
                    }
                    throw e;
                }
            } catch (IllegalArgumentException e2) {
                if (!CameraController.access$2500(this.this$0).isValid()) {
                    CamLog.w("SetRepeatingRequestTask : Preview surface is not valid, so the request is refused.");
                    return;
                }
                throw e2;
            }
        }
        ArrayList arrayList = new ArrayList();
        if (CameraController.access$1000(this.this$0).isPreCaptureOnGoing() || CameraController.access$1000(this.this$0).isPreScanOnGoing()) {
            CameraController.access$1700(this.this$0).set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AE_MODE, 1);
        }
        if (this.mCaptureSurface == null) {
            CaptureRequest captureRequestCreateCaptureRequest = CameraController.access$1700(this.this$0).createCaptureRequest(CameraController.access$1800(this.this$0), 1, CameraController.access$2500(this.this$0));
            if (captureRequestCreateCaptureRequest == null) {
                CamLog.i("SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is null.");
                return;
            }
            arrayList.add(captureRequestCreateCaptureRequest);
        } else {
            for (int i = 0; i < 3; i++) {
                Surface[] surfaceArr = {CameraController.access$2500(this.this$0)};
                if (i == 2) {
                    surfaceArr = new Surface[]{CameraController.access$2500(this.this$0), this.mCaptureSurface};
                }
                CaptureRequest captureRequestCreateCaptureRequest2 = CameraController.access$1700(this.this$0).createCaptureRequest(CameraController.access$1800(this.this$0), 1, surfaceArr);
                if (captureRequestCreateCaptureRequest2 == null) {
                    CamLog.i("SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is not null.");
                    return;
                }
                arrayList.add(captureRequestCreateCaptureRequest2);
            }
        }
        if (!CameraController.access$2500(this.this$0).isValid()) {
            this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
            if (CamLog.DEBUG) {
                CamLog.d("Preview surface is not valid, so the request is refused.");
                return;
            }
            return;
        }
        try {
            PerfLog.START_PREVIEW.begin();
            if (CamLog.DEBUG) {
                CamLog.d("setRepeatingBurst() requestNum:" + arrayList.size());
            }
            CameraController.access$2200(this.this$0).setRepeatingBurst(arrayList, this.mCaptureSessionCallback, CameraController.access$1000(this.this$0).getDeviceThreadHandler());
            if (CamLog.DEBUG) {
                CameraController.access$2300(this.this$0).update((CaptureRequest) arrayList.get(0));
                CameraController.access$2300(this.this$0).dump();
            }
            if (CameraController.access$1000(this.this$0).isVideo()) {
                if (CameraController.access$1000(this.this$0).isRecording()) {
                    deviceStatus$Value = DeviceStatus$Value.VIDEO_RECORDING;
                } else {
                    deviceStatus$Value = DeviceStatus$Value.VIDEO_PREVIEW;
                }
            } else {
                deviceStatus$Value = DeviceStatus$Value.STILL_PREVIEW;
            }
            EachCameraStatusPublisher eachCameraStatusPublisher = new EachCameraStatusPublisher(CameraController.access$2100(this.this$0), CameraController.access$1000(this.this$0).getParameters(getSessionId()).getCameraId());
            eachCameraStatusPublisher.put(new DeviceStatus(deviceStatus$Value));
            eachCameraStatusPublisher.publish();
        } catch (CameraAccessException e3) {
            if (!CameraController.access$1000(this.this$0).isIgnoreCameraError() || getOpenCloseStatusInfo().isErrorCaused()) {
                CamLog.w("Failed in setRepeatingRequest", e3);
                return;
            }
            if (!CameraController.access$2500(this.this$0).isValid()) {
                this.this$0.setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED);
                CamLog.d("setRepeatingRequest : mPreviewSurface is invalid.(after performing set repeating request)");
            } else {
                if (e3.getReason() == 3) {
                    CamLog.d("Failed in setRepeatingRequest  by CameraAccessException. Reason:" + e3.getReason());
                    CameraController.access$1500(this.this$0, getSessionId(), getOpenCloseStatusInfo(), CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
                    return;
                }
                throw new RuntimeException("Failed in setRepeatingRequest by CameraAccessException. Reason:" + e3.getReason());
            }
        } catch (IllegalArgumentException e4) {
            CamLog.w("Failed in setRepeatingRequest.", e4);
        }
    }
}
