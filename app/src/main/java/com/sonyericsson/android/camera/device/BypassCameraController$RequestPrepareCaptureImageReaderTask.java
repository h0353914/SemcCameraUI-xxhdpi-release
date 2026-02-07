package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class BypassCameraController$RequestPrepareCaptureImageReaderTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private final BypassCameraController$CaptureImageReaderRequest mRequest;
    final /* synthetic */ BypassCameraController this$0;

    /* synthetic */ BypassCameraController$RequestPrepareCaptureImageReaderTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, int i, int i2, Rect rect, CameraDeviceHandler$ImageReaderInitializedCallback cameraDeviceHandler$ImageReaderInitializedCallback, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, cameraDeviceHandler$CameraSessionId, i, i2, rect, cameraDeviceHandler$ImageReaderInitializedCallback);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$RequestPrepareCaptureImageReaderTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, int i, int i2, Rect rect, CameraDeviceHandler$ImageReaderInitializedCallback cameraDeviceHandler$ImageReaderInitializedCallback) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
        if (CamLog.DEBUG) {
            CamLog.d("invoked buffNum:" + i + "," + i2 + " size:" + rect.width() + "," + rect.height());
        }
        this.mRequest = new BypassCameraController$CaptureImageReaderRequest(null);
        BypassCameraController$CaptureImageReaderRequest.access$4002(this.mRequest, i);
        BypassCameraController$CaptureImageReaderRequest.access$4102(this.mRequest, i2);
        BypassCameraController$CaptureImageReaderRequest.access$4202(this.mRequest, rect);
        BypassCameraController$CaptureImageReaderRequest.access$4302(this.mRequest, cameraDeviceHandler$ImageReaderInitializedCallback);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return !getOpenCloseStatusInfo().isErrorCaused();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        CountDownLatch countDownLatchAccess$4500;
        synchronized (BypassCameraController.access$4400(this.this$0)) {
            BypassCameraController.access$4502(this.this$0, new CountDownLatch(1));
            countDownLatchAccess$4500 = BypassCameraController.access$4500(this.this$0);
        }
        BypassCameraController.access$4600(this.this$0, getSessionId(), this.mRequest, countDownLatchAccess$4500);
    }
}
