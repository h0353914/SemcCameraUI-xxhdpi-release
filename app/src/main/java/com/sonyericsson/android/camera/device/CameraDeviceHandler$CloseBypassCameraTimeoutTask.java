package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$CloseBypassCameraTimeoutTask implements Runnable {
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ CameraDeviceHandler this$0;

    /* synthetic */ CameraDeviceHandler$CloseBypassCameraTimeoutTask(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler, cameraDeviceHandler$CameraSessionId);
    }

    private CameraDeviceHandler$CloseBypassCameraTimeoutTask(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$0 = cameraDeviceHandler;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
    }

    @Override // java.lang.Runnable
    public void run() {
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo;
        if (CameraDeviceHandler.access$1000(this.this$0) || (openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.mSessionId)) == null || !openCloseStatusInfo.isCloseBypassCameraTaskRequested() || openCloseStatusInfo.isCloseBypassCameraTaskPerformed()) {
            return;
        }
        if (CameraDeviceHandler.access$1100(this.this$0) != null) {
            CameraDeviceHandler.access$1100(this.this$0).getLooper().dump(new CameraDeviceHandler$CloseBypassCameraTimeoutTask$1(this), "");
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\n========== TIMEOUT ==========\n");
        CameraDeviceHandler.access$1200(this.this$0, sb);
        sb.append("=============================");
        CamLog.e("CloseBypassCameraTimeoutTask", sb.toString().replace(',', '\n'));
        throw new RuntimeException("CloseBypassCameraTimeoutTask: The camera app keeps holding the camera hardware resources.");
    }
}
