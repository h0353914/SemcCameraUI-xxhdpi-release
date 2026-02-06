package com.sonyericsson.android.camera.device;

import android.support.annotation.WorkerThread;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@WorkerThread
class BypassCameraController$CloseBypassCameraTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private static final long TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS = 30000;
    private static final long TIMEOUT_WAIT_FOR_EACH_SNAPSHOT_DONE_MILLIS = 15000;
    private static final long TIMEOUT_WAIT_SNAPSHOT_READY_DONE_MILLIS = 5000;
    private final CountDownLatch mWaitForAllSnapshotDoneLock;
    final /* synthetic */ BypassCameraController this$0;

    /* synthetic */ BypassCameraController$CloseBypassCameraTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* synthetic */ BypassCameraController$CloseBypassCameraTask(BypassCameraController bypassCameraController, CountDownLatch countDownLatch, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, countDownLatch, cameraDeviceHandler$CameraSessionId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$CloseBypassCameraTask(BypassCameraController bypassCameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
        this.mWaitForAllSnapshotDoneLock = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$CloseBypassCameraTask(BypassCameraController bypassCameraController, CountDownLatch countDownLatch, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
        this.mWaitForAllSnapshotDoneLock = countDownLatch;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return (getOpenCloseStatusInfo().isOpenBypassCameraTaskPerformed() || getOpenCloseStatusInfo().isErrorCaused()) && !getOpenCloseStatusInfo().isCloseBypassCameraTaskPerformed();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        getOpenCloseStatusInfo().setPerformed(CameraDeviceHandler$OpenClosePerformStatus.BYPASS_CAMERA_CLOSED);
        BypassCameraController.access$1600(this.this$0);
        BypassCameraController.access$3100(this.this$0);
        try {
            if (BypassCameraController.access$3200(this.this$0) != null) {
                CamLog.d("Waiting to complete snapshot ready:" + BypassCameraController.access$3200(this.this$0).getCount());
                if (BypassCameraController.access$3200(this.this$0).await(5000L, TimeUnit.MILLISECONDS)) {
                    CamLog.d("Snapshot ready done is completed");
                } else {
                    CamLog.e("Timeout of waiting snapshot ready done.");
                }
            }
            if (this.mWaitForAllSnapshotDoneLock != null) {
                long count = this.mWaitForAllSnapshotDoneLock.getCount();
                CamLog.d("Waiting to complete all snapshots:" + count);
                if (this.mWaitForAllSnapshotDoneLock.await(Math.max(count * 15000, 30000L), TimeUnit.MILLISECONDS)) {
                    CamLog.d("All snapshots done are completed");
                } else {
                    CamLog.e("Timeout of waiting all snapshots done.");
                }
            }
        } catch (InterruptedException unused) {
            CamLog.e("Intercept waiting request done.");
        }
        BypassCameraController.access$3300(this.this$0);
        BypassCameraController.access$3402(this.this$0, null);
        if (BypassCameraController.access$3500(this.this$0)) {
            BypassCameraController.access$1200(this.this$0).requestSnapshotFree();
            BypassCameraController.access$3502(this.this$0, false);
        }
        releaseBypassCamera();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void postCameraDeviceAccess() {
        removeOpenCloseStatusInfo();
        this.mLatch.countDown();
        BypassCameraController.access$3600(this.this$0);
    }

    @WorkerThread
    private void releaseBypassCamera() {
        if (BypassCameraController.access$1200(this.this$0) != null) {
            try {
                BypassCameraController.access$1700(this.this$0).shutdown();
                boolean zAwaitTermination = BypassCameraController.access$1700(this.this$0).awaitTermination(2000L, TimeUnit.MILLISECONDS);
                BypassCameraController.access$1702(this.this$0, null);
                if (!zAwaitTermination) {
                    CamLog.e("Time-out occurs to release BypassCamera.");
                }
            } catch (InterruptedException unused) {
                CamLog.e("Time-out thread is interrupted.");
            }
            BypassCameraController.access$1200(this.this$0).close();
            CamLog.d("BypassCamera is closed.");
        }
        BypassCameraController.access$1202(this.this$0, null);
        BypassCameraController.access$2002(this.this$0, null);
        BypassCameraController.access$2102(this.this$0, null);
        BypassCameraController.access$902(this.this$0, null);
        BypassCameraController.access$3202(this.this$0, null);
        BypassCameraController.access$500(this.this$0).clear();
        BypassCameraController.access$700(this.this$0).clear();
        BypassCameraController.access$3502(this.this$0, false);
        BypassCameraController.access$3702(this.this$0, -1);
        BypassCameraController.access$000(this.this$0).onCameraClosed();
    }
}
