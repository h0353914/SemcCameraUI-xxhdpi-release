package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo {
    private final StackTraceElement[] stackTrace;
    private final String status;
    final /* synthetic */ CameraDeviceHandler$CameraDeviceAccessTask this$0;

    /* synthetic */ CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler$CameraDeviceAccessTask);
    }

    static /* synthetic */ void access$2600(CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo cameraDeviceHandler$CameraDeviceAccessTask$DumpInfo, String str) {
        cameraDeviceHandler$CameraDeviceAccessTask$DumpInfo.dump(str);
    }

    private CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        this.this$0 = cameraDeviceHandler$CameraDeviceAccessTask;
        this.stackTrace = Thread.currentThread().getStackTrace();
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(CameraDeviceHandler$CameraDeviceAccessTask.access$2300(cameraDeviceHandler$CameraDeviceAccessTask));
        if (openCloseStatusInfo == null) {
            this.status = "CameraSession info is null. So, camera is closed";
        } else {
            this.status = CameraDeviceHandler$CameraSessionInfo.access$2400(openCloseStatusInfo);
        }
    }

    private void dump(String str) {
        CamLog.d("[status dump] START " + str);
        CamLog.d("[status dump]   status:" + this.status);
        CamLog.d("[status dump]   trace:");
        for (int i = 1; i < this.stackTrace.length; i++) {
            CamLog.d("[status dump]     at " + this.stackTrace[i].getClassName() + "#" + this.stackTrace[i].getMethodName());
        }
        CamLog.d("[status dump] END");
    }
}
