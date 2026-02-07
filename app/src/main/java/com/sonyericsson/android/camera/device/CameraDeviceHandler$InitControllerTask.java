package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$InitControllerTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraDeviceHandler this$0;

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return true;
    }

    private CameraDeviceHandler$InitControllerTask(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    /* synthetic */ CameraDeviceHandler$InitControllerTask(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected void doCameraDeviceAccess() {
        CameraDeviceHandler.access$302(this.this$0, new BypassCameraController(CameraDeviceHandler.access$400(this.this$0), new CameraDeviceHandler$BypassCameraControllerCallbackImpl(this.this$0, null), new CameraDeviceHandler$CameraDeviceHandlerInquirer(this.this$0)));
        CameraDeviceHandler.access$602(this.this$0, new CameraController(CameraDeviceHandler.access$400(this.this$0), new CameraDeviceHandler$CameraControllerCallbackImpl(this.this$0, null), new CameraDeviceHandler$CameraDeviceHandlerInquirer(this.this$0)));
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void postCameraDeviceAccess() {
        this.mLatch.countDown();
    }
}
