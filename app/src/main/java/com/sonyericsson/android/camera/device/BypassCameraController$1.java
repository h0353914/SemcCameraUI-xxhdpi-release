package com.sonyericsson.android.camera.device;

import android.media.ImageReader;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import java.util.concurrent.CountDownLatch;

class BypassCameraController$1 implements Runnable {
    final /* synthetic */ BypassCameraController this$0;
    final /* synthetic */ CameraDeviceHandler$CameraSessionId val$currentSessionId;
    final /* synthetic */ CountDownLatch val$imageReaderReadyLatch;
    final /* synthetic */ boolean val$needToFinalize;
    final /* synthetic */ BypassCameraController$CaptureImageReaderRequest val$request;

    BypassCameraController$1(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CountDownLatch countDownLatch, BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, boolean z) {
        this.this$0 = bypassCameraController;
        this.val$currentSessionId = cameraDeviceHandler$CameraSessionId;
        this.val$imageReaderReadyLatch = countDownLatch;
        this.val$request = bypassCameraController$CaptureImageReaderRequest;
        this.val$needToFinalize = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        BypassCameraController.access$4800(this.this$0);
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.val$currentSessionId);
        if (BypassCameraController.access$1200(this.this$0) == null || openCloseStatusInfo == null || openCloseStatusInfo.isCloseBypassCameraTaskRequested() || openCloseStatusInfo.isCloseBypassCameraTaskPerformed()) {
            if (CamLog.DEBUG) {
                CamLog.d("Skip creating ImageReader. BypassCamera would be closed.");
            }
            BypassCameraController.access$4900(this.this$0, this.val$imageReaderReadyLatch);
            return;
        }
        if (BypassCameraController$CaptureImageReaderRequest.access$4700(this.val$request, BypassCameraController.access$3400(this.this$0))) {
            if (CamLog.DEBUG) {
                CamLog.d("Same ImageReader has bean already initialized");
            }
            BypassCameraController.access$4900(this.this$0, this.val$imageReaderReadyLatch);
            if (BypassCameraController$CaptureImageReaderRequest.access$4300(this.val$request) != null) {
                BypassCameraController$CaptureImageReaderRequest.access$4300(this.val$request).onInitialized();
                return;
            }
            return;
        }
        synchronized (BypassCameraController.access$5000(this.this$0)) {
            if (BypassCameraController.access$5100(this.this$0) == null || BypassCameraController.access$5100(this.this$0).getCount() <= 0) {
                if (CamLog.DEBUG) {
                    CamLog.d("Latch ImageReaderPrepared.");
                }
                BypassCameraController.access$5102(this.this$0, new CountDownLatch(1));
            }
        }
        BypassCameraController.access$3402(this.this$0, this.val$request);
        if (this.val$needToFinalize) {
            BypassCameraController.access$5200(this.this$0);
        }
        BypassCameraController.access$602(this.this$0, ImageReader.newInstance(BypassCameraController$CaptureImageReaderRequest.access$4200(this.val$request).width(), BypassCameraController$CaptureImageReaderRequest.access$4200(this.val$request).height(), 256, BypassCameraController$CaptureImageReaderRequest.access$4000(this.val$request)));
        BypassCameraController.access$600(this.this$0).setOnImageAvailableListener(BypassCameraController.access$2100(this.this$0), BypassCameraController.access$5300(this.this$0));
        int iAccess$4100 = BypassCameraController$CaptureImageReaderRequest.access$4100(this.val$request) + BypassCameraController$CaptureImageReaderRequest.access$4000(this.val$request);
        PerfLog.BYPASSCAMERA_PREPARE.begin();
        BypassCameraController.access$5400(this.this$0, iAccess$4100);
        PerfLog.BYPASSCAMERA_PREPARE.end();
        BypassCameraController.access$4900(this.this$0, this.val$imageReaderReadyLatch);
        if (BypassCameraController$CaptureImageReaderRequest.access$4300(this.val$request) != null) {
            BypassCameraController$CaptureImageReaderRequest.access$4300(this.val$request).onInitialized();
        }
    }
}
