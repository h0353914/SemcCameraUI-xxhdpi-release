package com.sonyericsson.android.camera.device;

import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.device.BypassCameraSnapshotInfoFactory;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class BypassCameraController$RequestSnapshotTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private final RequestFactory$PhotoSavingRequestBuilder mBuilder;
    private final int mCaptureNum;
    final /* synthetic */ BypassCameraController this$0;

    /* synthetic */ BypassCameraController$RequestSnapshotTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, int i, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, cameraDeviceHandler$CameraSessionId, requestFactory$PhotoSavingRequestBuilder, i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$RequestSnapshotTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, int i) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
        this.mBuilder = requestFactory$PhotoSavingRequestBuilder;
        this.mCaptureNum = i;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return getOpenCloseStatusInfo().isOpenBypassCameraTaskPerformed() && !getOpenCloseStatusInfo().isCloseBypassCameraTaskPerformed();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        if (CamLog.DEBUG) {
            CamLog.d("requestSnapshot()  captureNum:" + this.mCaptureNum + " dateTaken:" + this.mBuilder.getDateTaken() + " filePath:" + this.mBuilder.getFilePath() + " extraOutput:" + this.mBuilder.getExtraOutput() + " requestId" + this.mBuilder.getRequestId());
        }
        BypassCameraController.access$1200(this.this$0).requestSnapshot(BypassCameraSnapshotInfoFactory.create(this.mBuilder, this.mCaptureNum));
    }
}
