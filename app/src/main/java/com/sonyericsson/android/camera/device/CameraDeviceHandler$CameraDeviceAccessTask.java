package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
abstract class CameraDeviceHandler$CameraDeviceAccessTask implements Runnable {
    private static final boolean IS_DUMP_EXCEPTION_TASK_INFO_ENABLED = true;
    private static final boolean IS_DUMP_REJECTED_TASK_INFO_ENABLED = false;
    private final CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo mDumpInfoAtConstruct;
    private final boolean mIsBelongedToSession;
    protected final CountDownLatch mLatch;
    private PerfLog mPerfLog;
    private final CameraDeviceHandler$CameraSessionId mSessionId;

    protected abstract void doCameraDeviceAccess();

    protected void postCameraDeviceAccess() {
    }

    protected abstract boolean verifyCameraDeviceStatus();

    static /* synthetic */ CameraDeviceHandler$CameraSessionId access$2300(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        return cameraDeviceHandler$CameraDeviceAccessTask.mSessionId;
    }

    static /* synthetic */ CountDownLatch access$800(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        return cameraDeviceHandler$CameraDeviceAccessTask.getLatch();
    }

    protected void setPerformancefLog(PerfLog perfLog) {
        this.mPerfLog = perfLog;
    }

    CameraDeviceHandler$CameraDeviceAccessTask(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this(cameraDeviceHandler$CameraSessionId, true);
    }

    CameraDeviceHandler$CameraDeviceAccessTask() {
        this(null, false);
    }

    private CameraDeviceHandler$CameraDeviceAccessTask(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, boolean z) {
        this.mPerfLog = null;
        this.mLatch = new CountDownLatch(1);
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
        this.mIsBelongedToSession = z;
        if (CamLog.DEBUG) {
            this.mDumpInfoAtConstruct = new CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo(this, null);
        } else {
            this.mDumpInfoAtConstruct = null;
        }
        if (CamLog.DEBUG) {
            CamLog.d("REQUEST:" + getClass().getSimpleName() + " sessionId:" + this.mSessionId);
        }
    }

    private CountDownLatch getLatch() {
        return this.mLatch;
    }

    protected CameraDeviceHandler$CameraSessionId getSessionId() {
        return this.mSessionId;
    }

    protected CameraDeviceHandler$CameraSessionInfo getOpenCloseStatusInfo() {
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.mSessionId);
        if (openCloseStatusInfo != null) {
            return openCloseStatusInfo;
        }
        CameraDeviceHandler$CameraSessionInfo cameraDeviceHandler$CameraSessionInfo = new CameraDeviceHandler$CameraSessionInfo(null);
        cameraDeviceHandler$CameraSessionInfo.setRequested(CameraDeviceHandler$OpenCloseRequestStatus.BYPASS_CAMERA_CLOSING);
        cameraDeviceHandler$CameraSessionInfo.setPerformed(CameraDeviceHandler$OpenClosePerformStatus.BYPASS_CAMERA_CLOSED);
        return cameraDeviceHandler$CameraSessionInfo;
    }

    protected void removeOpenCloseStatusInfo() {
        CameraDeviceHandler$CameraSessionInfo.removeOpenCloseStatusInfo(this.mSessionId);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = (this.mIsBelongedToSession && getOpenCloseStatusInfo().isCloseBypassCameraTaskPerformed()) ? false : true;
            if (verifyCameraDeviceStatus() && z) {
                if (CamLog.DEBUG) {
                    CamLog.d("START:" + getClass().getSimpleName() + " sessionId:" + this.mSessionId);
                }
                if (this.mPerfLog != null) {
                    this.mPerfLog.begin();
                }
                doCameraDeviceAccess();
                if (this.mPerfLog != null) {
                    this.mPerfLog.end();
                }
                if (CamLog.DEBUG) {
                    CamLog.d("END:" + getClass().getSimpleName() + " sessionId:" + this.mSessionId);
                }
            } else if (CamLog.DEBUG) {
                CamLog.d("REJECTED:" + getClass().getSimpleName() + " sessionId:" + this.mSessionId);
            }
            postCameraDeviceAccess();
        } catch (RuntimeException e) {
            if (CamLog.DEBUG) {
                CamLog.d("EXCEPTION:" + getClass().getSimpleName() + " sessionId:" + this.mSessionId);
                CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo cameraDeviceHandler$CameraDeviceAccessTask$DumpInfo = this.mDumpInfoAtConstruct;
                StringBuilder sb = new StringBuilder();
                sb.append("request ");
                sb.append(getClass().getSimpleName());
                CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo.access$2600(cameraDeviceHandler$CameraDeviceAccessTask$DumpInfo, sb.toString());
                CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo.access$2600(new CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo(this, null), "performed " + getClass().getSimpleName());
            }
            throw e;
        }
    }
}
