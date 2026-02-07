package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraController$RequestSnapshotReadyAfterAfParametersReflected implements CameraParameters$AfParametersCallback {
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$RequestSnapshotReadyAfterAfParametersReflected(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId);
    }

    private CameraController$RequestSnapshotReadyAfterAfParametersReflected(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$0 = cameraController;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
    }

    @Override // com.sonyericsson.android.camera.device.CameraParameters$AfParametersCallback
    public void onReflected(AfParametersReflectedChecker afParametersReflectedChecker) {
        synchronized (CameraController.access$5600(this.this$0)) {
            CameraController.access$5700(this.this$0).remove(afParametersReflectedChecker);
        }
        CameraController.access$000(this.this$0).onReflected(this.mSessionId);
    }
}
