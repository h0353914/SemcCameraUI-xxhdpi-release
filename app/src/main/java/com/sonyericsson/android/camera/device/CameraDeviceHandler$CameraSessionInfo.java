package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$CameraSessionInfo {
    private final CameraParameters mCameraParameters;
    private boolean mIsCameraEvicted = false;
    private boolean mIsCameraError = false;
    private boolean mIsOtherError = false;
    private final CameraInfo mCameraInfo = new CameraInfo();
    private CameraDeviceHandler$OpenCloseRequestStatus mRequested = CameraDeviceHandler$OpenCloseRequestStatus.NONE;
    private CameraDeviceHandler$OpenClosePerformStatus mPerformed = CameraDeviceHandler$OpenClosePerformStatus.NONE;

    static /* synthetic */ String access$2400(CameraDeviceHandler$CameraSessionInfo cameraDeviceHandler$CameraSessionInfo) {
        return cameraDeviceHandler$CameraSessionInfo.info();
    }

    CameraDeviceHandler$CameraSessionInfo(CameraInfo$CameraId cameraInfo$CameraId) {
        this.mCameraParameters = new CameraParameters(cameraInfo$CameraId);
    }

    static void addOpenCloseStatusInfo(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$CameraSessionInfo cameraDeviceHandler$CameraSessionInfo) {
        synchronized (CameraDeviceHandler.access$000()) {
            CameraDeviceHandler.access$000().put(cameraDeviceHandler$CameraSessionId, cameraDeviceHandler$CameraSessionInfo);
        }
    }

    static CameraDeviceHandler$CameraSessionInfo getOpenCloseStatusInfo(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraDeviceHandler$CameraSessionInfo cameraDeviceHandler$CameraSessionInfo;
        synchronized (CameraDeviceHandler.access$000()) {
            cameraDeviceHandler$CameraSessionInfo = (CameraDeviceHandler$CameraSessionInfo) CameraDeviceHandler.access$000().get(cameraDeviceHandler$CameraSessionId);
        }
        return cameraDeviceHandler$CameraSessionInfo;
    }

    static void removeOpenCloseStatusInfo(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        synchronized (CameraDeviceHandler.access$000()) {
            if (CameraDeviceHandler.access$000().containsKey(cameraDeviceHandler$CameraSessionId)) {
                CameraDeviceHandler.access$000().remove(cameraDeviceHandler$CameraSessionId);
            }
        }
    }

    synchronized void setRequested(CameraDeviceHandler$OpenCloseRequestStatus cameraDeviceHandler$OpenCloseRequestStatus) {
        this.mRequested = cameraDeviceHandler$OpenCloseRequestStatus;
    }

    synchronized void setPerformed(CameraDeviceHandler$OpenClosePerformStatus cameraDeviceHandler$OpenClosePerformStatus) {
        this.mPerformed = cameraDeviceHandler$OpenClosePerformStatus;
    }

    synchronized boolean isCloseCameraTaskRequested() {
        switch (CameraDeviceHandler$6.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus[this.mRequested.ordinal()]) {
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    synchronized boolean isCloseBypassCameraTaskRequested() {
        return CameraDeviceHandler$6.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus[this.mRequested.ordinal()] == 2;
    }

    synchronized boolean isCloseBypassCameraTaskPerformed() {
        return CameraDeviceHandler$6.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus[this.mPerformed.ordinal()] == 1;
    }

    synchronized boolean isOpenBypassCameraTaskPerformed() {
        return CameraDeviceHandler$6.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus[this.mPerformed.ordinal()] != 2;
    }

    synchronized boolean isOpenCameraTaskPerformed() {
        switch (CameraDeviceHandler$6.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus[this.mPerformed.ordinal()]) {
            case 2:
            case 3:
                return false;
            default:
                return true;
        }
    }

    synchronized void setCameraEvicted() {
        this.mIsCameraEvicted = true;
    }

    synchronized void setCameraError() {
        this.mIsCameraError = true;
    }

    synchronized void setOtherError() {
        this.mIsOtherError = true;
    }

    synchronized boolean isErrorCaused() {
        boolean z;
        z = true;
        CamLog.i("Error caused by evicted:" + this.mIsCameraEvicted + " deviceError:" + this.mIsCameraError + " otherError:" + this.mIsOtherError);
        if (!this.mIsCameraEvicted && !this.mIsCameraError) {
            if (!this.mIsOtherError) {
                z = false;
            }
        }
        return z;
    }

    private synchronized String info() {
        return "[" + this.mRequested.name() + "|" + this.mPerformed.name() + "|" + this.mIsCameraEvicted + "|" + this.mIsCameraError + "|" + this.mIsOtherError + "]";
    }

    public static void dump(StringBuilder sb) {
        synchronized (CameraDeviceHandler.access$000()) {
            for (Map$Entry map$Entry : CameraDeviceHandler.access$000().entrySet()) {
                sb.append(map$Entry.getKey());
                sb.append(' ');
                sb.append(((CameraDeviceHandler$CameraSessionInfo) map$Entry.getValue()).info());
                sb.append('\n');
            }
        }
    }

    CameraParameters getParameters() {
        return this.mCameraParameters;
    }

    CameraInfo getCameraInfo() {
        return this.mCameraInfo;
    }
}
