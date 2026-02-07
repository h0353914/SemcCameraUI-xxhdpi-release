package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraDevice$StateCallback;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class CameraController$CameraStateCallback extends CameraDevice$StateCallback {
    private static final int OPEN_CLOSE_WAIT_TIME_MILLIS = 2000;
    private final Object mCameraDeviceLock;
    private CountDownLatch mCloseCameraLatch;
    private CameraDevice mDevice;
    private boolean mIsRequiredToAbandonDevice;
    private CountDownLatch mOpenCameraLatch;
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$CameraStateCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId);
    }

    static /* synthetic */ void access$1600(CameraController$CameraStateCallback cameraController$CameraStateCallback) {
        cameraController$CameraStateCallback.cancelOpenCamera();
    }

    static /* synthetic */ CameraDevice access$1900(CameraController$CameraStateCallback cameraController$CameraStateCallback) {
        return cameraController$CameraStateCallback.waitCameraOpened();
    }

    static /* synthetic */ void access$2900(CameraController$CameraStateCallback cameraController$CameraStateCallback) {
        cameraController$CameraStateCallback.waitCameraClosed();
    }

    private CameraController$CameraStateCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$0 = cameraController;
        this.mOpenCameraLatch = new CountDownLatch(1);
        this.mCloseCameraLatch = new CountDownLatch(1);
        this.mCameraDeviceLock = new Object();
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
        this.mIsRequiredToAbandonDevice = false;
        this.mDevice = null;
    }

    private CameraDevice waitCameraOpened() {
        CameraDevice cameraDevice;
        try {
            if (!this.mOpenCameraLatch.await(1000L, TimeUnit.MILLISECONDS)) {
                CamLog.w("Opening camera device is timed-out. sessionId:" + this.mSessionId);
            }
        } catch (InterruptedException e) {
            CamLog.e("waitCameraOpened() : Failed to await", e);
        }
        synchronized (this.mCameraDeviceLock) {
            cameraDevice = this.mDevice;
            this.mDevice = null;
            this.mIsRequiredToAbandonDevice = true;
        }
        return cameraDevice;
    }

    private void cancelOpenCamera() {
        synchronized (this.mCameraDeviceLock) {
            if (this.mDevice != null) {
                this.mDevice.close();
                this.mDevice = null;
            }
            this.mIsRequiredToAbandonDevice = true;
        }
    }

    private void waitCameraClosed() {
        try {
            if (this.mCloseCameraLatch.await(1000L, TimeUnit.MILLISECONDS)) {
                return;
            }
            CamLog.w("Closing camera device is timed-out. sessionId:" + this.mSessionId);
        } catch (InterruptedException e) {
            CamLog.e("waitCameraClosed() : Failed to await", e);
        }
    }

    @Override // android.hardware.camera2.CameraDevice$StateCallback
    public void onOpened(CameraDevice cameraDevice) {
        synchronized (this.mCameraDeviceLock) {
            if (CamLog.DEBUG) {
                CamLog.d("invoked sessionId:" + this.mSessionId + " isRequiredToAbandonDevice:" + this.mIsRequiredToAbandonDevice);
            }
            if (this.mIsRequiredToAbandonDevice) {
                cameraDevice.close();
            } else {
                this.mDevice = cameraDevice;
            }
        }
        this.mOpenCameraLatch.countDown();
        synchronized (this.mCameraDeviceLock) {
            if (this.mIsRequiredToAbandonDevice && this.mDevice != null) {
                this.mDevice.close();
                this.mDevice = null;
            }
        }
    }

    @Override // android.hardware.camera2.CameraDevice$StateCallback
    public void onDisconnected(CameraDevice cameraDevice) {
        CamLog.e("CameraStateCallback.onDisconnected() : SessionID = " + this.mSessionId);
        CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.mSessionId).setCameraEvicted();
        CameraController.access$000(this.this$0).onSessionDisconnected(this.mSessionId);
    }

    @Override // android.hardware.camera2.CameraDevice$StateCallback
    public void onError(CameraDevice cameraDevice, int i) {
        switch (i) {
            case 1:
                CamLog.e("onError is called. Error:" + i + " (CameraStateCallback.ERROR_CAMERA_IN_USE). SessionID = " + this.mSessionId);
                break;
            case 2:
                CamLog.e("onError is called. Error:" + i + " (CameraStateCallback.ERROR_MAX_CAMERAS_IN_USE). SessionID = " + this.mSessionId);
                break;
            case 3:
                CamLog.e("onError is called. Error:" + i + " (CameraStateCallback.ERROR_CAMERA_DISABLED). SessionID = " + this.mSessionId);
                break;
            case 4:
                CamLog.e("onError is called. Error:" + i + " (CameraStateCallback.ERROR_CAMERA_DEVICE). SessionID = " + this.mSessionId);
                break;
            case 5:
                CamLog.e("onError is called. Error:" + i + " (CameraStateCallback.ERROR_CAMERA_SERVICE). SessionID = " + this.mSessionId);
                break;
            default:
                CamLog.e("onError is called. Error:" + i + " (UNKNOWN). SessionID = " + this.mSessionId);
                break;
        }
        CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.mSessionId).setCameraError();
        CameraController.access$000(this.this$0).onDeviceError(this.mSessionId, CameraDeviceHandler$ErrorCode.ERROR_ON_CAMERA_ERROR);
    }

    @Override // android.hardware.camera2.CameraDevice$StateCallback
    public void onClosed(CameraDevice cameraDevice) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked sessionId:" + this.mSessionId);
        }
        this.mCloseCameraLatch.countDown();
    }
}
