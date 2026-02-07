package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.support.annotation.WorkerThread;
import android.util.Size;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.recorder.RecordingProfile;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus$Value;
import com.sonyericsson.cameracommon.status.global.BuiltInCameraIds;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$Facing;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PhotoMode;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCameraParameters;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCameraTimeoutException;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
class BypassCameraController$OpenBypassCameraTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    private final CapturingMode mMode;
    private final SharedPreferences mPreferences;
    private final FastCapture mRequestFastCapture;
    private final UserSettings mUserSettings;
    final /* synthetic */ BypassCameraController this$0;

    /* synthetic */ BypassCameraController$OpenBypassCameraTask(BypassCameraController bypassCameraController, SharedPreferences sharedPreferences, UserSettings userSettings, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture, CapturingMode capturingMode, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController, sharedPreferences, userSettings, cameraDeviceHandler$CameraSessionId, fastCapture, capturingMode);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private BypassCameraController$OpenBypassCameraTask(BypassCameraController bypassCameraController, SharedPreferences sharedPreferences, UserSettings userSettings, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture, CapturingMode capturingMode) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$0 = bypassCameraController;
        this.mPreferences = sharedPreferences;
        this.mUserSettings = userSettings;
        this.mRequestFastCapture = fastCapture;
        this.mMode = capturingMode;
        if (fastCapture != FastCapture.LAUNCH_AND_CAPTURE) {
            BypassCameraController.access$1900(bypassCameraController, this.mPreferences, this.mUserSettings, this.mMode, BypassCameraController.access$1400(bypassCameraController).getParameters(getSessionId()));
        }
        setPerformancefLog(PerfLog.OPEN_BYPASS_CAMERA_TASK);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return !getOpenCloseStatusInfo().isCloseBypassCameraTaskRequested();
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        BypassCamera$Facing bypassCamera$Facing;
        boolean z;
        boolean z2;
        getOpenCloseStatusInfo().setPerformed(CameraDeviceHandler$OpenClosePerformStatus.BYPASS_CAMERA_OPENED);
        CameraParameters parameters = BypassCameraController.access$1400(this.this$0).getParameters(getSessionId());
        if (this.mRequestFastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
            BypassCameraController.access$1900(this.this$0, this.mPreferences, this.mUserSettings, this.mMode, parameters);
        }
        switch (BypassCameraController$3.$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[parameters.getCameraId().ordinal()]) {
            case 1:
                bypassCamera$Facing = BypassCamera$Facing.BACK;
                break;
            case 2:
                bypassCamera$Facing = BypassCamera$Facing.FRONT;
                break;
            default:
                throw new IllegalStateException("OpenBypassCameraTask:[preview] [UnExpected camera Id=" + parameters.getCameraId() + "]");
        }
        try {
            BypassCameraController.access$1702(this.this$0, ThreadUtil.buildExecutor("BypassCamera"));
            if (CamLog.DEBUG) {
                CamLog.d("Open BypassCamera. facing:" + bypassCamera$Facing);
            }
            BypassCameraController.access$1202(this.this$0, BypassCamera.open(bypassCamera$Facing, BypassCameraController.access$1700(this.this$0)));
            BypassCameraController.access$2002(this.this$0, new BypassCameraParameters());
            BypassCameraController.access$2102(this.this$0, new BypassCameraController$SnapshotCallbackImpl(this.this$0, null));
            BypassCameraController.access$1200(this.this$0).setPhotoCallbacks(new BypassCameraController$SnapshotReadyCallbackImpl(this.this$0, null), BypassCameraController.access$2100(this.this$0), new BypassCameraController$SnapshotFreeCallbackImpl(null));
            BypassCameraController.access$1200(this.this$0).setBurstCallbacks(new BypassCameraController$PrepareBurstCallbackImpl(this.this$0, null), new BypassCameraController$FinishBurstCallbackImpl(null));
            if (this.mMode.isVideo()) {
                VideoSize videoSize = parameters.getVideoSize();
                if (CamLog.DEBUG) {
                    CamLog.d("changeToVideoMode() preview:" + parameters.getPreviewSize() + " video:" + videoSize + " stabilizer:" + parameters.getVideoStabilizer() + " hdr:" + parameters.getVideoHdr());
                }
                try {
                    BypassCameraController.access$1200(this.this$0).changeToVideoMode(BypassCameraController.access$2700(this.this$0, parameters.getCameraId(), parameters.getVideoStabilizer(), parameters.getVideoHdr()), BypassCameraController.access$2800(this.this$0, parameters.getPreviewSize()), BypassCameraController.access$2800(this.this$0, videoSize.getVideoRect()), RecordingProfile.getVideoFrameRate(videoSize, parameters.getVideoHdr()));
                } catch (BypassCameraTimeoutException unused) {
                    BypassCameraController.access$2900(this.this$0, getSessionId());
                    BypassCameraController.access$1400(this.this$0).changePreProcessStateTo(CameraDeviceHandler$PreProcessState.NOT_STARTED);
                    return;
                }
            } else {
                if (CamLog.DEBUG) {
                    CamLog.d("changeToPhotoMode() preview:" + parameters.getPreviewSize() + " picture:" + parameters.getPictureSize());
                }
                try {
                    BypassCameraController.access$1200(this.this$0).changeToPhotoMode(BypassCamera$PhotoMode.NORMAL, new Size(parameters.getPreviewSize().width(), parameters.getPreviewSize().height()), new Size(parameters.getPictureSize().width(), parameters.getPictureSize().height()), PredictiveCapture.AUTO.getCaptureNum());
                } catch (BypassCameraTimeoutException unused2) {
                    BypassCameraController.access$2900(this.this$0, getSessionId());
                    BypassCameraController.access$1400(this.this$0).changePreProcessStateTo(CameraDeviceHandler$PreProcessState.NOT_STARTED);
                    return;
                }
            }
            BypassCameraController.access$1400(this.this$0).changePreProcessStateTo(CameraDeviceHandler$PreProcessState.NOT_STARTED);
            Context contextAccess$1300 = BypassCameraController.access$1300(this.this$0);
            if (contextAccess$1300 == null || this.mRequestFastCapture != FastCapture.LAUNCH_AND_CAPTURE || contextAccess$1300.checkSelfPermission("android.permission.CAMERA") == 0) {
                z = true;
            } else {
                CamLog.i("Camera permission is not granted, so pre-capture is refused.");
                z = false;
            }
            switch (BypassCameraController$3.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture[this.mRequestFastCapture.ordinal()]) {
                case 1:
                    z2 = false;
                    break;
                case 2:
                    z2 = true;
                    break;
                default:
                    throw new IllegalStateException("OpenBypassCameraTask():[FastCapture=" + this.mRequestFastCapture + "]");
            }
            if (z2 && z) {
                PerfLog.FAST_PRE_SCAN.transit();
                Rect pictureSize = parameters.getPictureSize();
                BypassCameraController.access$1400(this.this$0).postCameraDeviceThread(new BypassCameraController$RequestPrepareCaptureImageReaderTask(this.this$0, getSessionId(), 1, 2, new Rect(0, 0, pictureSize.width(), pictureSize.height()), null, null));
                this.this$0.requestSnapshotReady(getSessionId());
                BypassCameraController.access$1400(this.this$0).changePreProcessStateTo(CameraDeviceHandler$PreProcessState.PRE_SCAN_STARTED);
            }
            if (contextAccess$1300 != null) {
                new EachCameraStatusPublisher(contextAccess$1300, parameters.getCameraId()).put(new DeviceStatus(DeviceStatus$Value.POWER_ON)).publish();
                new GlobalCameraStatusPublisher(contextAccess$1300).put(new BuiltInCameraIds(parameters.getCameraId())).publish();
            }
        } catch (Exception e) {
            BypassCameraController.access$1700(this.this$0).shutdown();
            BypassCameraController.access$1702(this.this$0, null);
            CamLog.e("Failed to open BypassCamera. " + e);
        }
    }
}
