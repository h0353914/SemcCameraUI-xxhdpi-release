package com.sonyericsson.android.camera.device;

import android.support.annotation.WorkerThread;
import android.view.Surface;
import com.sonyericsson.android.camera.util.PerfLog;

@WorkerThread
class CameraController$SetSurfaceTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private final Surface mSurface;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$SetSurfaceTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, Surface surface, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, surface);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraController$SetSurfaceTask(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, Surface surface) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = cameraController;
        this.mSurface = surface;
        setPerformancefLog(PerfLog.SET_REPEATING_REQUEST_TASK);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return !getOpenCloseStatusInfo().isCloseCameraTaskRequested();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        if (this.mSurface == null || !this.mSurface.isValid()) {
            return;
        }
        CameraController.access$2502(this.this$0, this.mSurface);
    }
}
