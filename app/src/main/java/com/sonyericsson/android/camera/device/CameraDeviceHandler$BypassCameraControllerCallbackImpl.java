package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$DisplayFlashColor;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;

class CameraDeviceHandler$BypassCameraControllerCallbackImpl implements BypassCameraController$BypassCameraControllerCallback {
    private Runnable mSnapshotReadyDoneTask;
    final /* synthetic */ CameraDeviceHandler this$0;

    private CameraDeviceHandler$BypassCameraControllerCallbackImpl(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler);
    }

    @Override // com.sonyericsson.android.camera.device.BypassCameraController$BypassCameraControllerCallback
    public void onCameraClosed() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked pre-process:" + CameraDeviceHandler.access$2700(this.this$0));
        }
        if (CameraDeviceHandler.access$2700(this.this$0) == CameraDeviceHandler$PreProcessState.NOT_STARTED || CameraDeviceHandler.access$2700(this.this$0) == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) {
            CameraDeviceHandler.access$2800(this.this$0, CameraDeviceHandler$PreProcessState.NOT_STARTED);
        } else {
            CameraDeviceHandler.access$2800(this.this$0, CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED);
        }
        CameraDeviceHandler.access$2900(this.this$0).removeCallbacks(this.mSnapshotReadyDoneTask);
        this.mSnapshotReadyDoneTask = null;
        CameraDeviceHandler.access$2900(this.this$0).post(new CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask(this, null));
    }

    @Override // com.sonyericsson.android.camera.device.BypassCameraController$BypassCameraControllerCallback
    public void onPrepareBurstDone(boolean z) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked success:" + z);
        }
        CameraDeviceHandler.access$2900(this.this$0).post(new CameraDeviceHandler$BypassCameraControllerCallbackImpl$1(this, z));
    }

    @Override // com.sonyericsson.android.camera.device.BypassCameraController$BypassCameraControllerCallback
    public void onShutterDone(int i, int i2, boolean z) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked captureId:" + i + " captureNum:" + i2 + " isAfSuccess:" + z);
        }
        if (CameraDeviceHandler.access$2700(this.this$0) == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_STARTED) {
            CameraDeviceHandler.access$2800(this.this$0, CameraDeviceHandler$PreProcessState.PRE_SHUTTER_DONE);
            if (CameraDeviceHandler.access$3200(this.this$0)) {
                CameraDeviceHandler.access$600(this.this$0).createPreviewSession(CameraDeviceHandler.access$2200(this.this$0));
            }
        }
        String str = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US).format(new Date());
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 == 0) {
                RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderPeekLastSavingPhotoRequest = CameraDeviceHandler.access$300(this.this$0).peekLastSavingPhotoRequest();
                setPredictiveCaptureInfo(requestFactory$PhotoSavingRequestBuilderPeekLastSavingPhotoRequest, i3, i2, str);
                CameraDeviceHandler.access$2900(this.this$0).post(new CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl(this, requestFactory$PhotoSavingRequestBuilderPeekLastSavingPhotoRequest, i2, z, null));
            } else {
                RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest = CameraDeviceHandler.access$3100(this.this$0).createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO);
                setPredictiveCaptureInfo(requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest, i3, i2, str);
                CameraDeviceHandler.access$300(this.this$0).enqueueSavingPhotoRequest(requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest);
            }
        }
    }

    private void setPredictiveCaptureInfo(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, int i, int i2, String str) {
        if (i2 > 1) {
            requestFactory$PhotoSavingRequestBuilder.setSaveTimeForCaptureGroup(str);
            requestFactory$PhotoSavingRequestBuilder.setCaptureIdForCaptureGourp((i2 - i) - 1);
            if (i == 0) {
                requestFactory$PhotoSavingRequestBuilder.setSomcType(100);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.device.BypassCameraController$BypassCameraControllerCallback
    public void onSnapshotDone(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked requestId:" + requestFactory$PhotoSavingRequestBuilder.getRequestId());
        }
        CameraDeviceHandler.access$2900(this.this$0).post(new CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl(this, requestFactory$PhotoSavingRequestBuilder, null));
    }

    private String toString(BypassCamera$DisplayFlashColor bypassCamera$DisplayFlashColor) {
        if (bypassCamera$DisplayFlashColor == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(bypassCamera$DisplayFlashColor.colorRed);
        sb.append(',');
        sb.append(bypassCamera$DisplayFlashColor.colorGreen);
        sb.append(',');
        sb.append(bypassCamera$DisplayFlashColor.colorBlue);
        return sb.toString();
    }

    @Override // com.sonyericsson.android.camera.device.BypassCameraController$BypassCameraControllerCallback
    public void onSnapshotReadyDone(ExecutorService executorService, boolean z, boolean z2, boolean z3, BypassCamera$DisplayFlashColor bypassCamera$DisplayFlashColor) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked pre-process:" + CameraDeviceHandler.access$2700(this.this$0) + " isHighQualityBurstAvailable:" + z + " isAfSuccess:" + z2 + " requireFlash:" + z3 + " displayFlashColor:" + toString(bypassCamera$DisplayFlashColor));
        }
        this.mSnapshotReadyDoneTask = new CameraDeviceHandler$BypassCameraControllerCallbackImpl$2(this, z2, z, z3, bypassCamera$DisplayFlashColor);
        if (CameraDeviceHandler.access$2700(this.this$0) == CameraDeviceHandler$PreProcessState.PRE_SCAN_STARTED) {
            if (!executorService.isShutdown()) {
                executorService.submit(this.mSnapshotReadyDoneTask);
                return;
            } else {
                CamLog.w("BypassCameraRequestExecutor already Shutdown");
                return;
            }
        }
        CameraDeviceHandler.access$2900(this.this$0).post(this.mSnapshotReadyDoneTask);
    }
}
