package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.os.SystemClock;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CapturePerformanceLogger;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus$Value;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonymobile.cameracommon.testevent.TestEventSender;

class CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl implements Runnable {
    private final RequestFactory$PhotoSavingRequestBuilder localRequestBuilder;
    final /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl this$1;

    /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler$BypassCameraControllerCallbackImpl, requestFactory$PhotoSavingRequestBuilder);
    }

    private CameraDeviceHandler$BypassCameraControllerCallbackImpl$SnapshotDoneHandlerCallbackImpl(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        this.this$1 = cameraDeviceHandler$BypassCameraControllerCallbackImpl;
        this.localRequestBuilder = requestFactory$PhotoSavingRequestBuilder;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("SnapshotDoneHandlerCallbackImpl invoked pre-process:" + CameraDeviceHandler.access$2700(this.this$1.this$0));
        }
        if (CapturePerformanceLogger.get(this.localRequestBuilder) != null) {
            CapturePerformanceLogger.get(this.localRequestBuilder).snapshotDone = SystemClock.uptimeMillis();
        }
        TestEventSender.onPictureTaken();
        if (CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.PRE_SHUTTER_DONE) {
            CameraDeviceHandler.access$2800(this.this$1.this$0, CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE);
            if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
                CameraDeviceHandler.access$3100(this.this$1.this$0).onPreTakePictureDone(this.localRequestBuilder);
            } else {
                CamLog.i("Launch and capture is done before activity is started.");
                CameraDeviceHandler.access$300(this.this$1.this$0).setPreCaptureResult(this.localRequestBuilder);
            }
        } else if (CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.NOT_STARTED || CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) {
            if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
                CameraDeviceHandler.access$3100(this.this$1.this$0).onTakePictureDone(this.localRequestBuilder);
            } else if (CameraDeviceHandler.access$3400(this.this$1.this$0) != null) {
                CamLog.i("Capture is done after activity is puased.");
                CameraDeviceHandler.access$3400(this.this$1.this$0).onTakePictureDone(this.localRequestBuilder);
            } else {
                CamLog.e("StateMachine doesn't exists, so captured photo cannot be saved.");
            }
        } else {
            this.localRequestBuilder.close();
        }
        Context contextAccess$1600 = CameraDeviceHandler.access$1600(this.this$1.this$0);
        if (contextAccess$1600 != null) {
            new EachCameraStatusPublisher(contextAccess$1600, this.this$1.this$0.getCameraId()).put(new DeviceStatus(CameraDeviceHandler.access$3600(this.this$1.this$0) ? DeviceStatus$Value.VIDEO_RECORDING : DeviceStatus$Value.STILL_PREVIEW)).publish();
        }
    }
}
