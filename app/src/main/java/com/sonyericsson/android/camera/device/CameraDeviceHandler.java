package com.sonyericsson.android.camera.device;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.media.CamcorderProfile;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.DocumentsContract;
import android.util.ArrayMap;
import android.view.Surface;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DisplayFlash;
import com.sonyericsson.android.camera.configuration.parameters.DistortionCorrection;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveCapture;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.debug.DebugParameterUtils;
import com.sonyericsson.android.camera.recorder.RecorderController;
import com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener;
import com.sonyericsson.android.camera.recorder.RecorderException;
import com.sonyericsson.android.camera.recorder.RecorderFactory;
import com.sonyericsson.android.camera.recorder.RecorderFactory$Parameters;
import com.sonyericsson.android.camera.recorder.RecorderParameters$Builder;
import com.sonyericsson.android.camera.recorder.RecordingProfile;
import com.sonyericsson.android.camera.recorder.superslowrecorder.OnSuperSlowRecordingFinishedListener;
import com.sonyericsson.android.camera.recorder.superslowrecorder.SuperSlowRecorderController;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonyericsson.android.camera.setting.LastSettings;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus$Value;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight$Value;
import com.sonyericsson.cameracommon.status.eachcamera.SlowMotion;
import com.sonyericsson.cameracommon.status.eachcamera.SlowMotion$Value;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.RequestFactory$RequestBuilder;
import com.sonyericsson.cameracommon.storage.RequestFactory$VideoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.Storage$StorageWriteNotifier;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.RecordingUtil;
import com.sonymobile.cameracommon.research.ResearchUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.CancellationException;

public class CameraDeviceHandler {
    static final long CLOSE_BYPASS_CAMERA_TIMEOUT_MILLIS = 100000;
    private static final long DELAY_STATUS_PROVIDER_UPDATE_UNTIL_RECORDING_STARTED_MILLIS = 3000;
    private static final long TIMEOUT_WAIT_FOR_PARAMETERS_TO_BE_REFLECTED_MILLIS = 5000;
    private Context mApplicationContext;
    private BypassCameraController mBypassCameraController;
    private CameraActionSound mCameraActionSound;
    private CameraController mCameraController;
    private final Handler mCameraDeviceThreadHandler;
    private final CameraDeviceHandler$CameraDeviceAccessTask mInitControllerTask;
    private boolean mIsVideo;
    private RequestFactory$VideoSavingRequestBuilder mLastVideoSavingRequest;
    private StateMachine mStateMachine;
    private StateMachine mStateMachineForSavingRequest;
    private RecorderController mVideoRecorder;
    private final Object mVideoRecorderLock;
    private static final Object sSendPauseEventAndReleaseCameraTaskToken = new Object();
    private static final Map<CameraDeviceHandler$CameraSessionId, CameraDeviceHandler$CameraSessionInfo> sCameraSessionInfoMap = new ArrayMap();
    private CameraDeviceHandler$LoadSettingsThread mLoadSettingsThread = null;
    private Handler mUiThreadHandler = CameraApplication.getUiThreadHandler();
    private SharedPreferences mPreferences = null;
    private GeotagManager mGeotagManager = null;
    private CameraDeviceHandler$FastCaptureOrientation mFastCaptureOrientation = null;
    private FastCapture mFastCaptureSetting = null;
    private Boolean mIsRecording = false;
    private CameraDeviceHandler$PreProcessState mPreProcessState = CameraDeviceHandler$PreProcessState.NOT_STARTED;
    private boolean mIsCameraDisabled = false;
    private boolean mIsFpsLimitationEnabled = false;
    private boolean mActivityIsInForeground = true;
    private boolean mIsInShutdownNow = false;
    private CameraDeviceHandler$CameraSessionId mCameraSessionId = null;
    private CameraDeviceHandler$CloseBypassCameraTimeoutTask mCloseBypassCameraTimeoutTask = null;
    private final Runnable mChangeProviderDeviceStatusToRecordingTask = new CameraDeviceHandler$5(this);

    public static final void preload() {
    }

    static /* synthetic */ Map access$000() {
        return sCameraSessionInfoMap;
    }

    static /* synthetic */ boolean access$1000(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mActivityIsInForeground;
    }

    static /* synthetic */ Handler access$1100(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mCameraDeviceThreadHandler;
    }

    static /* synthetic */ void access$1200(CameraDeviceHandler cameraDeviceHandler, StringBuilder sb) {
        cameraDeviceHandler.dumpStatus(sb);
    }

    static /* synthetic */ CameraActionSound access$1400(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mCameraActionSound;
    }

    static /* synthetic */ CameraActionSound access$1402(CameraDeviceHandler cameraDeviceHandler, CameraActionSound cameraActionSound) {
        cameraDeviceHandler.mCameraActionSound = cameraActionSound;
        return cameraActionSound;
    }

    static /* synthetic */ FastCapture access$1500(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mFastCaptureSetting;
    }

    static /* synthetic */ Context access$1600(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.getApplicationContext();
    }

    static /* synthetic */ GeotagManager access$1700(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mGeotagManager;
    }

    static /* synthetic */ GeotagManager access$1702(CameraDeviceHandler cameraDeviceHandler, GeotagManager geotagManager) {
        cameraDeviceHandler.mGeotagManager = geotagManager;
        return geotagManager;
    }

    static /* synthetic */ void access$1800(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        cameraDeviceHandler.runOnCameraDeviceThread(cameraDeviceHandler$CameraDeviceAccessTask);
    }

    static /* synthetic */ CameraDeviceHandler$FastCaptureOrientation access$1900(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mFastCaptureOrientation;
    }

    static /* synthetic */ CameraDeviceHandler$FastCaptureOrientation access$1902(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$FastCaptureOrientation cameraDeviceHandler$FastCaptureOrientation) {
        cameraDeviceHandler.mFastCaptureOrientation = cameraDeviceHandler$FastCaptureOrientation;
        return cameraDeviceHandler$FastCaptureOrientation;
    }

    static /* synthetic */ CameraDeviceHandler$CameraSessionId access$2200(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mCameraSessionId;
    }

    static /* synthetic */ CameraDeviceHandler$PreProcessState access$2700(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mPreProcessState;
    }

    static /* synthetic */ void access$2800(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$PreProcessState cameraDeviceHandler$PreProcessState) {
        cameraDeviceHandler.changePreProcessStateTo(cameraDeviceHandler$PreProcessState);
    }

    static /* synthetic */ Handler access$2900(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mUiThreadHandler;
    }

    static /* synthetic */ BypassCameraController access$300(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mBypassCameraController;
    }

    static /* synthetic */ BypassCameraController access$302(CameraDeviceHandler cameraDeviceHandler, BypassCameraController bypassCameraController) {
        cameraDeviceHandler.mBypassCameraController = bypassCameraController;
        return bypassCameraController;
    }

    static /* synthetic */ StateMachine access$3100(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mStateMachine;
    }

    static /* synthetic */ boolean access$3200(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.isNeedCreatePreviewSession();
    }

    static /* synthetic */ StateMachine access$3400(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mStateMachineForSavingRequest;
    }

    static /* synthetic */ boolean access$3600(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mIsVideo;
    }

    static /* synthetic */ RecorderController access$3900(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mVideoRecorder;
    }

    static /* synthetic */ Context access$400(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mApplicationContext;
    }

    static /* synthetic */ CameraParameters access$4100(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        return cameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
    }

    static /* synthetic */ void access$4200(CameraDeviceHandler cameraDeviceHandler) {
        cameraDeviceHandler.releaseRecorderOnCameraClosed();
    }

    static /* synthetic */ void access$4300(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        cameraDeviceHandler.runOnCameraDeviceThreadSync(cameraDeviceHandler$CameraDeviceAccessTask);
    }

    static /* synthetic */ CameraController access$600(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mCameraController;
    }

    static /* synthetic */ CameraController access$602(CameraDeviceHandler cameraDeviceHandler, CameraController cameraController) {
        cameraDeviceHandler.mCameraController = cameraController;
        return cameraController;
    }

    private Context getApplicationContext() {
        return this.mApplicationContext;
    }

    private void dumpStatus(StringBuilder sb) {
        sb.append("mStateMachine:" + this.mStateMachine + ",");
        sb.append("mPreProcessState:" + this.mPreProcessState.name() + ",");
        sb.append("mActivityIsInForeground:" + this.mActivityIsInForeground + ",");
        sb.append("mIsCameraDisabled:" + this.mIsCameraDisabled + ",");
        CameraDeviceHandler$CameraSessionInfo.dump(sb);
        this.mCameraController.dump(sb);
        this.mBypassCameraController.dump(sb);
    }

    private void changePreProcessStateTo(CameraDeviceHandler$PreProcessState cameraDeviceHandler$PreProcessState) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked current:" + this.mPreProcessState + " next:" + cameraDeviceHandler$PreProcessState);
        }
        this.mPreProcessState = cameraDeviceHandler$PreProcessState;
    }

    public void cancelPreProcessState() {
        changePreProcessStateTo(CameraDeviceHandler$PreProcessState.NOT_STARTED);
    }

    private boolean isNeedCreatePreviewSession() {
        return getPreProcessState() == CameraDeviceHandler$PreProcessState.PRE_SHUTTER_DONE && this.mCameraController.getCameraDeviceStatus() == CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED;
    }

    public Object getSendPauseEventAndReleaseCameraTaskToken() {
        return sSendPauseEventAndReleaseCameraTaskToken;
    }

    public void stopAudioRecording() {
        if (this.mVideoRecorder != null) {
            this.mVideoRecorder.stopAudioRecording();
        }
    }

    public int getRemainSavingPhotoRequestCount() {
        return this.mBypassCameraController.getRemainSavingPhotoRequestCount();
    }

    public int getRemainPrevSavingRequestCount() {
        return this.mBypassCameraController.getRemainPrevSavingRequestCount();
    }

    public RequestFactory$PhotoSavingRequestBuilder getAndClearPreCaptureResult() {
        return this.mBypassCameraController.getAndClearPreCaptureResult();
    }

    public void playShutterSound(int i) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked type:" + i);
        }
        if (this.mCameraActionSound != null) {
            switch (i) {
                case 1:
                    this.mCameraActionSound.play(0, false);
                    break;
                case 2:
                    this.mCameraActionSound.play(2, true);
                    break;
            }
        }
    }

    private boolean isBypassCameraSupported() {
        return PlatformCapability.isBypassCameraSupported();
    }

    private boolean isBypassCameraAvailable() {
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo;
        return (this.mCameraSessionId == null || (openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.mCameraSessionId)) == null || openCloseStatusInfo.isCloseBypassCameraTaskRequested()) ? false : true;
    }

    public void setOnPreviewStartedListener(CameraDeviceHandler$OnPreviewStartedListener cameraDeviceHandler$OnPreviewStartedListener) {
        this.mCameraController.setOnPreviewStartedListener(cameraDeviceHandler$OnPreviewStartedListener);
    }

    public void removeOnPreviewStartedListener() {
        this.mCameraController.removeOnPreviewStartedListener();
    }

    public CameraDeviceHandler(Context context) {
        this.mApplicationContext = null;
        this.mApplicationContext = context;
        HandlerThread handlerThread = new HandlerThread("CameraAccess", 10);
        handlerThread.start();
        this.mCameraDeviceThreadHandler = new Handler(handlerThread.getLooper());
        this.mVideoRecorderLock = new Object();
        this.mInitControllerTask = new CameraDeviceHandler$InitControllerTask(this, null);
        runOnCameraDeviceThread(this.mInitControllerTask);
        runOnCameraDeviceThread(new CameraDeviceHandler$LoadNativeLibraryTask(this, null));
    }

    public synchronized CameraDeviceHandler$CameraSessionId preloadCamera(Context context, UserSettings userSettings, CapturingMode capturingMode, boolean z) {
        FastCapture fastCapture;
        if (isBypassCameraAvailable()) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is already preloaded.");
            }
            return this.mCameraSessionId;
        }
        if (userSettings == null) {
            this.mPreferences = context.getSharedPreferences("com.sonyericsson.android.camera.shared_preferences", 0);
        }
        try {
            CameraDeviceHandler$CameraDeviceAccessTask.access$800(this.mInitControllerTask).await();
            if (this.mPreProcessState != CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED) {
                changePreProcessStateTo(CameraDeviceHandler$PreProcessState.NOT_STARTED);
            }
            if (z) {
                capturingMode = CapturingMode.SCENE_RECOGNITION;
                fastCapture = FastCapture.LAUNCH_AND_CAPTURE;
            } else {
                fastCapture = FastCapture.LAUNCH_ONLY;
            }
            this.mIsVideo = capturingMode.isVideo();
            this.mCameraSessionId = this.mBypassCameraController.openBypassCamera(this.mPreferences, userSettings, fastCapture, capturingMode);
            if (CamLog.DEBUG) {
                CamLog.d("invoked mode:" + capturingMode + " fast-capture:" + z);
            }
            cancelCloseBypassCameraTimeoutTask();
            return this.mCameraSessionId;
        } catch (InterruptedException e) {
            CamLog.e("InitControllerTask is interrupted.", e);
            return null;
        }
    }

    public synchronized boolean prepareCamera(FastCapture fastCapture, CapturingMode capturingMode, UserSettings userSettings) {
        CameraParameterValidator.loadCheckList(getApplicationContext());
        if (((DevicePolicyManager) getApplicationContext().getSystemService("device_policy")).getCameraDisabled(null)) {
            CamLog.i("Use of camera is prohibited by device policy.");
            if (CamLog.DEBUG) {
                CamLog.d("Camera is disabled, so this request was refused.");
            }
            this.mIsCameraDisabled = true;
            return false;
        }
        this.mIsCameraDisabled = false;
        this.mIsVideo = capturingMode.isVideo();
        this.mFastCaptureSetting = fastCapture;
        createCameraActionSound();
        if (!isBypassCameraAvailable()) {
            this.mCameraSessionId = this.mBypassCameraController.openBypassCamera(this.mPreferences, userSettings, this.mFastCaptureSetting, capturingMode);
            cancelCloseBypassCameraTimeoutTask();
        }
        this.mCameraController.initializeCaptureRequest(capturingMode);
        return true;
    }

    public synchronized CameraDeviceHandler$CameraSessionId openCamera(FastCapture fastCapture, CapturingMode capturingMode, UserSettings userSettings) {
        this.mCameraController.openCamera(this.mCameraSessionId, fastCapture);
        LocalResearchUtil.getInstance().clearAllSettings();
        if (fastCapture == FastCapture.LAUNCH_AND_CAPTURE && (this.mLoadSettingsThread == null || !this.mLoadSettingsThread.isAlive())) {
            this.mLoadSettingsThread = new CameraDeviceHandler$LoadSettingsThread(this, capturingMode, userSettings, null);
            this.mLoadSettingsThread.setName("LoadSettingsThread");
            this.mLoadSettingsThread.setPriority(10);
            this.mLoadSettingsThread.start();
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked mode:" + capturingMode + " quick-launch:" + fastCapture);
        }
        return this.mCameraSessionId;
    }

    @Deprecated
    public CameraParameters getParameters() {
        return getParameters(this.mCameraSessionId);
    }

    public Rect getPreviewSize() {
        if (getParameters() == null) {
            return null;
        }
        return getParameters().getPreviewSize();
    }

    public Float getZoom() {
        CameraParameters parameters = getParameters();
        if (parameters != null) {
            return Float.valueOf(parameters.getZoom());
        }
        return null;
    }

    private CameraParameters getParameters(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId);
        if (openCloseStatusInfo != null) {
            return openCloseStatusInfo.getParameters();
        }
        return null;
    }

    public CameraInfo getCameraInfo() {
        return CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.mCameraSessionId).getCameraInfo();
    }

    public void closeCamera(boolean z) {
        if (CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(this.mCameraSessionId) == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        new EachCameraStatusPublisher(getApplicationContext(), getCameraId()).put(new SlowMotion(SlowMotion$Value.OFF)).publish();
        if (this.mPreProcessState == CameraDeviceHandler$PreProcessState.NOT_STARTED || this.mPreProcessState == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) {
            changePreProcessStateTo(CameraDeviceHandler$PreProcessState.NOT_STARTED);
        } else {
            changePreProcessStateTo(CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED);
        }
        boolean z2 = z | this.mIsInShutdownNow;
        if (!z2 && isRecorderWorking() && ((BatteryManager) this.mApplicationContext.getSystemService("batterymanager")).getIntProperty(4) == 0) {
            z2 = true;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked sync:" + z2);
        }
        if (this.mGeotagManager != null) {
            this.mGeotagManager.releaseResource();
            this.mGeotagManager.release();
            this.mGeotagManager = null;
        }
        if (this.mFastCaptureOrientation != null) {
            this.mFastCaptureOrientation.disable();
            this.mFastCaptureOrientation = null;
        }
        if (isRecorderWorking()) {
            CamLog.i("Camera is waiting for completion of capturing in recording video.");
            this.mBypassCameraController.awaitAllSnapshotDone();
        }
        cancelChangeProviderDeviceStatusToRecording();
        synchronized (this.mVideoRecorderLock) {
            if (this.mVideoRecorder != null && (this.mVideoRecorder.isRecording() || this.mVideoRecorder.isPaused())) {
                try {
                    this.mVideoRecorder.stop();
                } catch (RecorderException unused) {
                    throw new RuntimeException("stopRecording():[Failed to stop MediaRecorder.]");
                }
            }
        }
        this.mCameraController.closeCamera(z2, this.mCameraSessionId);
        this.mFastCaptureSetting = null;
        this.mBypassCameraController.closeBypassCamera(z2, this.mCameraSessionId);
        requestCloseBypassCameraTimeoutTask(this.mCameraSessionId);
        releaseCameraActionSound();
    }

    public void closeCamera() {
        closeCamera(false);
    }

    public void closeCamera(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked requested-session:" + cameraDeviceHandler$CameraSessionId + " current-session:" + this.mCameraSessionId);
        }
        if (this.mCameraSessionId == null || cameraDeviceHandler$CameraSessionId != this.mCameraSessionId) {
            return;
        }
        closeCamera();
    }

    private void cancelCloseBypassCameraTimeoutTask() {
        this.mUiThreadHandler.removeCallbacks(this.mCloseBypassCameraTimeoutTask);
        this.mCloseBypassCameraTimeoutTask = null;
    }

    private void requestCloseBypassCameraTimeoutTask(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCloseBypassCameraTimeoutTask = new CameraDeviceHandler$CloseBypassCameraTimeoutTask(this, cameraDeviceHandler$CameraSessionId, null);
        this.mUiThreadHandler.postDelayed(this.mCloseBypassCameraTimeoutTask, 100000L);
    }

    private void createCameraActionSound() {
        this.mCameraDeviceThreadHandler.post(new CameraDeviceHandler$1(this));
    }

    private void releaseCameraActionSound() {
        this.mCameraDeviceThreadHandler.post(new CameraDeviceHandler$2(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean awaitLoadSettingsThread() {
        boolean z;
        if (this.mLoadSettingsThread == null) {
            CamLog.d("awaitSettingLoadThread thread is unnecessary");
            return true;
        }
        try {
            this.mLoadSettingsThread.join(4000L);
        } catch (InterruptedException e) {
            CamLog.e("Thread:" + this.mLoadSettingsThread.getName() + " is Interrupted.", e);
        } catch (CancellationException e2) {
            CamLog.e("Thread:" + this.mLoadSettingsThread.getName() + " is Cancelled.", e2);
        }
        if (this.mLoadSettingsThread.isAlive()) {
            CamLog.e("Thread:" + this.mLoadSettingsThread.getName() + " is Timed out.");
        } else {
            z = true;
            if (CamLog.DEBUG) {
                CamLog.d("invoked success:" + z);
            }
            return z;
        }
        z = false;
        if (CamLog.DEBUG) {
        }
        return z;
    }

    public boolean isCameraDisabled() {
        return this.mIsCameraDisabled;
    }

    public void enableFpsLimitation() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
            }
        } else {
            if (this.mIsFpsLimitationEnabled) {
                return;
            }
            this.mIsFpsLimitationEnabled = true;
            int maxPreviewFps = PlatformCapability.getMaxPreviewFps(parameters.getCameraId());
            List<int[]> supportedPreviewFpsRange = PlatformCapability.getSupportedPreviewFpsRange(parameters.getCameraId());
            if (supportedPreviewFpsRange != null) {
                setFpsRange(CameraDeviceUtil.computePreviewFpsRange(parameters.getCameraId(), maxPreviewFps, supportedPreviewFpsRange));
                this.mCameraController.commitParameters(this.mCameraSessionId);
            }
        }
    }

    public void disableFpsLimitation() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mIsFpsLimitationEnabled = false;
    }

    public void preCapture() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            return;
        }
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderCreatePreCaptureSavingRequest = createPreCaptureSavingRequest(parameters);
        PerfLog.FAST_PRE_CAPTURE.transit();
        changePreProcessStateTo(CameraDeviceHandler$PreProcessState.PRE_CAPTURE_STARTED);
        this.mBypassCameraController.requestSnapshot(this.mCameraSessionId, requestFactory$PhotoSavingRequestBuilderCreatePreCaptureSavingRequest, 1);
    }

    public boolean isPreScanOnGoing() {
        return this.mPreProcessState == CameraDeviceHandler$PreProcessState.PRE_SCAN_STARTED;
    }

    public boolean isPreCaptureOnGoing() {
        return this.mPreProcessState == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_STARTED || this.mPreProcessState == CameraDeviceHandler$PreProcessState.PRE_SHUTTER_DONE;
    }

    public CameraDeviceHandler$PreProcessState getPreProcessState() {
        return this.mPreProcessState;
    }

    public void setAmberBlueColorAndCommit(int i) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        parameters.setAwbColorCompensationAb(i);
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + i);
        }
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    public void setBrightnessAndCommit(int i) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        parameters.setExposureCompensation(i);
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + i);
        }
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    public void setFlashMode(Flash flash) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (PlatformCapability.isDisplayFlashModeSupported(getCameraId())) {
                if (CamLog.DEBUG) {
                    CamLog.d("Display flash is supported, so this request was refused.");
                    return;
                }
                return;
            }
            if (!PlatformCapability.getSupportedFlashModes(getCameraId()).contains(flash.getValue())) {
                flash = Flash.OFF;
            }
            if (CamLog.DEBUG) {
                CamLog.d("invoked value:" + flash);
            }
            parameters.setFlashMode(flash.getValue());
            new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new PhotoLight("torch".equals(flash.getValue()) ? PhotoLight$Value.ON : PhotoLight$Value.OFF)).publish();
        }
    }

    public void setDisplayFlashMode(DisplayFlash displayFlash) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            return;
        }
        if (!PlatformCapability.isDisplayFlashModeSupported(getCameraId())) {
            if (CamLog.DEBUG) {
                CamLog.d("Display flash is not supported, so this request was refused.");
            }
        } else {
            if (isPreCaptureOnGoing() || isPreScanOnGoing()) {
                if (CamLog.DEBUG) {
                    CamLog.d("Capturing for quick launch is on going, so this request was refused.");
                    return;
                }
                return;
            }
            if (!PlatformCapability.getSupportedFlashModes(getCameraId()).contains(displayFlash.getValue())) {
                displayFlash = DisplayFlash.DISPLAY_OFF;
            }
            if (CamLog.DEBUG) {
                CamLog.d("invoked value:" + displayFlash);
            }
            parameters.setFlashMode(displayFlash.getValue());
        }
    }

    public void setFlashModeAndCommit(Flash flash) {
        if (isPreCaptureOnGoing() || isPreScanOnGoing()) {
            if (CamLog.DEBUG) {
                CamLog.d("Capturing for quick launch is on going, so this request was refused.");
            }
        } else {
            setFlashMode(flash);
            this.mCameraController.commitParameters(this.mCameraSessionId);
        }
    }

    public void setDisplayFlashModeAndCommit(DisplayFlash displayFlash) {
        if (isPreCaptureOnGoing() || isPreScanOnGoing()) {
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + displayFlash);
        }
        setDisplayFlashMode(displayFlash);
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    public void startFaceDetection() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.startFaceDetection(this.mCameraSessionId, this.mUiThreadHandler);
    }

    public void stopFaceDetection() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.stopFaceDetection(this.mCameraSessionId);
    }

    public void startSceneRecognition() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.startSceneRecognition(this.mCameraSessionId, this.mUiThreadHandler);
    }

    public void stopSceneRecognition() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.stopSceneRecognition(this.mCameraSessionId);
    }

    public CameraInfo$CameraId getCameraId() {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters != null) {
            return parameters.getCameraId();
        }
        return null;
    }

    public boolean isCameraFront() {
        return getCameraId() == CameraInfo$CameraId.FRONT;
    }

    public Rect getPreviewRect(CapturingMode capturingMode, Rect rect) {
        if (capturingMode.isVideo()) {
            CameraParameters parameters = getParameters(this.mCameraSessionId);
            if (parameters == null) {
                return this.mCameraController.getVideoPreviewSize(this.mCameraSessionId, capturingMode.getCameraId(), rect);
            }
            if (parameters.getVideoHdr() == VideoHdr.HDR_ON) {
                return PlatformCapability.getPreferredPreviewSizeForHdrVideo(capturingMode.getCameraId());
            }
            return this.mCameraController.getVideoPreviewSize(this.mCameraSessionId, capturingMode.getCameraId(), rect);
        }
        return this.mCameraController.getPhotoPreviewSize(this.mCameraSessionId, capturingMode.getCameraId(), rect);
    }

    public void setShutterTrigger(ShutterTrigger shutterTrigger) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + shutterTrigger);
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null || parameters.getShutterTrigger() == shutterTrigger) {
            return;
        }
        parameters.setShutterTrigger(shutterTrigger);
        this.mCameraController.triggerRestartPreview(this.mCameraSessionId, false);
    }

    public void setStateMachine(StateMachine stateMachine) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked prev:" + this.mStateMachine + " new:" + stateMachine);
        }
        this.mStateMachine = stateMachine;
        if (this.mStateMachine != null) {
            this.mStateMachineForSavingRequest = this.mStateMachine;
        }
    }

    public void setPreviewSurface(Surface surface) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked surface:" + surface);
        }
        this.mCameraController.setSurface(this.mCameraSessionId, false, surface);
    }

    public void startPreview() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.setRepeatingRequestInternal(this.mCameraSessionId, false);
    }

    public void stopPreview() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked recording:" + isRecorderWorking());
        }
        stopFaceDetection();
        stopSceneRecognition();
        if (!isRecorderWorking()) {
            this.mCameraController.stopPreview(this.mCameraSessionId);
        }
        LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.CLOSE_INITIAL_RESPONSE);
        LocalResearchUtil.getInstance().stopMeasurement(LocalResearchUtil$MeasurementKey.CLOSE_INITIAL_RESPONSE);
    }

    public void stopPreviewSynchronized() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked recording:" + isRecorderWorking());
        }
        if (isRecorderWorking()) {
            return;
        }
        this.mCameraController.stopPreviewTaskSynchronized(this.mCameraSessionId);
    }

    public void autoFocus() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        if (isBypassCameraSupported()) {
            AfParametersReflectedChecker afParametersReflectedCheckerCreateAfParametersResultChecker = this.mCameraController.createAfParametersResultChecker(this.mCameraSessionId, this.mUiThreadHandler);
            if (this.mCameraController.isAfParametersReflectedToDevice(afParametersReflectedCheckerCreateAfParametersResultChecker)) {
                this.mBypassCameraController.requestSnapshotReady(this.mCameraSessionId);
            } else {
                this.mUiThreadHandler.postDelayed(this.mCameraController.requestSnapshotReadyAfterAfParametersReflected(this.mCameraSessionId, afParametersReflectedCheckerCreateAfParametersResultChecker), 5000L);
            }
        }
    }

    public void cancelAutoFocus() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        if (isBypassCameraSupported()) {
            this.mBypassCameraController.requestSnapshotFree(this.mCameraSessionId);
        }
    }

    private RequestFactory$PhotoSavingRequestBuilder createPreCaptureSavingRequest(CameraParameters cameraParameters) {
        return new RequestFactory$PhotoSavingRequestBuilder(new TakenStatusCommon(System.currentTimeMillis(), this.mFastCaptureOrientation != null ? CameraDeviceHandler$FastCaptureOrientation.access$2100(this.mFastCaptureOrientation) : 0, this.mGeotagManager != null ? this.mGeotagManager.getCurrentLocation() : null, cameraParameters.getPictureSize().width(), cameraParameters.getPictureSize().height(), "image/jpeg", ".JPG", SavingTaskManager$SavedFileType.PHOTO, null, "", false, true), new TakenStatusPhoto(), true);
    }

    public void applySavingRequest(RequestFactory$RequestBuilder requestFactory$RequestBuilder) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        parameters.setRotation(requestFactory$RequestBuilder.mCommonStatus.orientation);
        parameters.removeGpsData();
        if (requestFactory$RequestBuilder.mCommonStatus.location != null) {
            if ((requestFactory$RequestBuilder.mCommonStatus.location.getLatitude() == 0.0d && requestFactory$RequestBuilder.mCommonStatus.location.getLongitude() == 0.0d) ? false : true) {
                parameters.setGpsData(requestFactory$RequestBuilder.mCommonStatus.location);
            }
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    public void takePicture(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked datetaken:" + requestFactory$PhotoSavingRequestBuilder.getDateTaken());
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters != null && isBypassCameraSupported()) {
            this.mBypassCameraController.requestSnapshot(this.mCameraSessionId, requestFactory$PhotoSavingRequestBuilder, parameters.getPredictiveCaptureNum());
        }
    }

    public void prepareBurst() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mBypassCameraController.requestPrepareBurstShot(this.mCameraSessionId);
    }

    public void finishBurst() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mBypassCameraController.requestFinishBurstShot(this.mCameraSessionId);
    }

    public void setSelectedFacePosition(int i, int i2) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked x:" + i + " y:" + i2);
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
            }
        } else if (PlatformCapability.isFaceDetectionAvailable(parameters.getCameraId())) {
            resetFocusModeAndCommit();
            this.mCameraController.setSelectedFacePosition(this.mCameraSessionId, i, i2);
        } else {
            CamLog.i("Face detection is not available.");
        }
    }

    public void setZoom(float f) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            return;
        }
        parameters.setZoom(f);
    }

    public void setZoomAndCommit(float f) {
        setZoom(f);
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    public void setFocusPositionAndCommit(Rect rect) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (PlatformCapability.getMaxNumFocusAreas(getCameraId()) < 1) {
            if (CamLog.DEBUG) {
                CamLog.d("Focus position change is not supported, so this request is refused.");
                return;
            }
            return;
        }
        Rect rect2 = new Rect(PositionConverter.getInstance().convertFromViewToActiveArray(rect));
        parameters.setFocusArea("user");
        if (CamLog.DEBUG) {
            CamLog.d("invoked rect:" + rect);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(rect2);
        parameters.setFocusRectangles(arrayList);
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    public void resetFocusModeAndCommit() {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (PlatformCapability.getMaxNumFocusAreas(getCameraId()) < 1) {
            if (CamLog.DEBUG) {
                CamLog.d("Focus position change is not supported, so this request is refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked current-focus-mode:" + parameters.getFocusMode());
        }
        if (!"manual".equals(parameters.getFocusMode())) {
            parameters.setFocusMode(PlatformDependencyResolver.getDefaultFocusModeForFastCapturePhoto(parameters, getCameraId()));
        }
        parameters.setFocusArea("center");
        parameters.setFocusRectangles(null);
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    private boolean isRecorderReady() {
        return this.mVideoRecorder != null && this.mVideoRecorder.isReady();
    }

    public boolean isCameraDeviceStatusReady() {
        return this.mCameraController.getCameraDeviceStatus() == CameraDeviceHandler$CameraDeviceStatus.STATUS_READY;
    }

    public void updateRecorder(RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder, boolean z) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked recorder-is-ready:" + isRecorderReady() + "shutter-sound-requested:" + z);
        }
        if (isRecorderReady()) {
            this.mLastVideoSavingRequest = requestFactory$VideoSavingRequestBuilder;
            this.mVideoRecorder.setLocation(requestFactory$VideoSavingRequestBuilder.mCommonStatus.location);
            this.mVideoRecorder.setOrientationHint(requestFactory$VideoSavingRequestBuilder.mCommonStatus.orientation);
            this.mVideoRecorder.setMaxDurationMillis(requestFactory$VideoSavingRequestBuilder.mVideoStatus.maxDurationMills);
            this.mVideoRecorder.setMaxFileSizeBytes(requestFactory$VideoSavingRequestBuilder.mVideoStatus.maxFileSizeBytes);
            this.mVideoRecorder.setOutputFilePath(requestFactory$VideoSavingRequestBuilder.getFilePath());
            this.mVideoRecorder.setUserSoundSetting(z);
        }
    }

    public void prepareRecorder(RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder, RecorderController$RecorderListener recorderController$RecorderListener, OnSuperSlowRecordingFinishedListener onSuperSlowRecordingFinishedListener, boolean z, RecordingProfile recordingProfile, Storage$StorageWriteNotifier storage$StorageWriteNotifier) {
        if (this.mVideoRecorder != null && this.mVideoRecorder.isStopping()) {
            if (CamLog.DEBUG) {
                CamLog.d("Recorder is stopping, so this request is refused.");
                return;
            }
            return;
        }
        if (isRecorderReady()) {
            if (CamLog.DEBUG) {
                CamLog.d("Recorder is already ready, so this request is refused.");
                return;
            }
            return;
        }
        this.mLastVideoSavingRequest = requestFactory$VideoSavingRequestBuilder;
        Uri extraOutput = requestFactory$VideoSavingRequestBuilder.getExtraOutput();
        if (extraOutput == null) {
            extraOutput = Uri.fromFile(new File(requestFactory$VideoSavingRequestBuilder.getFilePath()));
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            return;
        }
        RecorderFactory$Parameters recorderFactory$Parameters = new RecorderFactory$Parameters(recorderController$RecorderListener, onSuperSlowRecordingFinishedListener, recordingProfile.getProgressInterval(), z, parameters.getVideoStabilizer(), parameters.getSlowMotion());
        releaseRecorder();
        CameraDeviceHandler$3 cameraDeviceHandler$3 = new CameraDeviceHandler$3(this);
        CameraDeviceHandler$4 cameraDeviceHandler$4 = new CameraDeviceHandler$4(this);
        VideoSize videoSize = getParameters().getVideoSize();
        this.mVideoRecorder = RecorderFactory.create(getApplicationContext(), cameraDeviceHandler$4, cameraDeviceHandler$3, this.mUiThreadHandler, this.mCameraDeviceThreadHandler, recorderFactory$Parameters, (int) PlatformCapability.getSuperSlowFrameRate(parameters.getCameraId(), videoSize), (int) PlatformCapability.getSuperSlowFrameNum(parameters.getCameraId(), videoSize));
        this.mVideoRecorder.setStorageWriteNotifier(storage$StorageWriteNotifier);
        CamcorderProfile camcorderProfile = recordingProfile.getCamcorderProfile();
        if (camcorderProfile == null) {
            CamLog.e("prepareRecorder() : CamcorderProfile is null.");
            throw new RuntimeException("CamcorderProfile is null.");
        }
        boolean z2 = (parameters.getSlowMotion() == com.sonyericsson.android.camera.configuration.parameters.SlowMotion.SUPER_SLOW_SHOT || RecordingUtil.isAudioPolicyActive(getApplicationContext())) ? false : true;
        if (CamLog.DEBUG) {
            CamLog.d("invoked uri:" + extraOutput + " audio-record-enabled:" + z2);
        }
        if (this.mVideoRecorder.prepare(new RecorderParameters$Builder(extraOutput, camcorderProfile).setLocation(requestFactory$VideoSavingRequestBuilder.mCommonStatus.location).setMaxDuration((int) requestFactory$VideoSavingRequestBuilder.mVideoStatus.maxDurationMills).setMaxFileSize(requestFactory$VideoSavingRequestBuilder.mVideoStatus.maxFileSizeBytes).setMicrophoneEnabled(z2).setOrientationHint(requestFactory$VideoSavingRequestBuilder.mCommonStatus.orientation).setHdr(parameters.getVideoHdr() == VideoHdr.HDR_ON).setDataSpace(recordingProfile.dataSpace).build())) {
            return;
        }
        CamLog.e("prepareRecorder() : Failed to prepare MediaRecorder.");
        releaseRecorder();
        throw new RuntimeException("prepareRecorder():[Failed to prepare MediaRecorder.]");
    }

    public boolean isSteadyShotSupported() {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            CamLog.w("[getParameters failed] Did not check availability of VideoStabilizer.");
            return false;
        }
        return VideoStabilizer.STEADY_SHOT.isValueEnabled(parameters.getCameraId(), parameters.getVideoSize(), parameters.getVideoHdr());
    }

    public void releaseRecorder() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        synchronized (this.mVideoRecorderLock) {
            if (this.mVideoRecorder != null) {
                this.mVideoRecorder.release();
                this.mVideoRecorder = null;
            }
        }
    }

    private void releaseRecorderOnCameraClosed() {
        synchronized (this.mVideoRecorderLock) {
            if (this.mVideoRecorder != null) {
                this.mVideoRecorder.release();
            }
        }
    }

    public void startRecording() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        try {
            synchronized (this.mVideoRecorderLock) {
                if (this.mVideoRecorder != null) {
                    this.mVideoRecorder.start();
                    this.mIsRecording = true;
                }
            }
            changeProviderDeviceStatusToRecording();
        } catch (RecorderException e) {
            CamLog.e("mMediaRecorder.start() fail.");
            releaseVideo();
            if (this.mLastVideoSavingRequest.getFilePath() != null) {
                if (StorageUtil.getStorageTypeFromPath(this.mLastVideoSavingRequest.getFilePath(), this.mApplicationContext) != Storage$StorageType.EXTERNAL_CARD) {
                    try {
                        File file = new File(this.mLastVideoSavingRequest.getFilePath());
                        if (file.exists() && file.isFile() && !file.delete()) {
                            CamLog.e("videoFile.delete(): [Unable to delete empty video file.]");
                        }
                    } catch (Exception unused) {
                        CamLog.e("startRecording: [Unable to delete empty media file.]");
                    }
                } else {
                    Uri uriSearchDocumentSdCard = StorageUtil.searchDocumentSdCard(this.mApplicationContext, this.mLastVideoSavingRequest.getFilePath());
                    if (uriSearchDocumentSdCard != null) {
                        try {
                            if (!DocumentsContract.deleteDocument(this.mApplicationContext.getContentResolver(), uriSearchDocumentSdCard)) {
                                CamLog.w("deleteDocument: [delete failed.]" + uriSearchDocumentSdCard.toString());
                            }
                        } catch (FileNotFoundException | SecurityException e2) {
                            CamLog.e("deleteDocument: [occurred Exception.]", e2);
                        }
                    }
                }
            }
            throw new RuntimeException(e);
        }
    }

    private void changeProviderDeviceStatusToRecording() {
        this.mUiThreadHandler.postDelayed(this.mChangeProviderDeviceStatusToRecordingTask, 3000L);
    }

    private void cancelChangeProviderDeviceStatusToRecording() {
        this.mUiThreadHandler.removeCallbacks(this.mChangeProviderDeviceStatusToRecordingTask);
    }

    public void startSuperSlowMotion() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        if (!(this.mVideoRecorder instanceof SuperSlowRecorderController)) {
            throw new UnsupportedOperationException("Current recorder doesn't support slow motion");
        }
        try {
            ((SuperSlowRecorderController) this.mVideoRecorder).startSuperSlow();
        } catch (RecorderException e) {
            CamLog.e("startSuperSlowMotion() failed:" + e.getMessage());
        }
    }

    public Optional<Long> stopRecording(boolean z) {
        if (z) {
            this.mBypassCameraController.awaitAllSnapshotDone();
        }
        cancelChangeProviderDeviceStatusToRecording();
        new EachCameraStatusPublisher(getApplicationContext(), getCameraId()).put(new DeviceStatus(DeviceStatus$Value.VIDEO_PREVIEW)).publish();
        synchronized (this.mVideoRecorderLock) {
            if (this.mVideoRecorder != null) {
                if (CamLog.DEBUG) {
                    CamLog.d("invoked capturing:" + z + " recording:" + this.mVideoRecorder.isRecording() + " paused:" + this.mVideoRecorder.isPaused());
                }
                if (this.mVideoRecorder.isRecording() || this.mVideoRecorder.isPaused()) {
                    try {
                        this.mVideoRecorder.stop();
                        return Optional.of(Long.valueOf(this.mVideoRecorder.getRecordingTimeMillis()));
                    } catch (RecorderException unused) {
                        throw new RuntimeException("stopRecording():[Failed to stop MediaRecorder.]");
                    }
                }
            } else if (CamLog.DEBUG) {
                CamLog.d("Recorder doesn't exists, so this request is refused.");
            }
            return Optional.empty();
        }
    }

    public void finalizeRecording() {
        synchronized (this.mVideoRecorderLock) {
            if (this.mVideoRecorder != null) {
                try {
                    if (this.mVideoRecorder.isRecording() || this.mVideoRecorder.isPaused()) {
                        this.mVideoRecorder.stop();
                    }
                    long recordingTimeMillis = this.mVideoRecorder.getRecordingTimeMillis();
                    if (CamLog.DEBUG) {
                        CamLog.d("invoked duration:" + recordingTimeMillis);
                    }
                    this.mLastVideoSavingRequest.setDuration(recordingTimeMillis);
                } catch (RecorderException unused) {
                    throw new RuntimeException("stopRecording():[Failed to stop MediaRecorder.]");
                }
            } else if (CamLog.DEBUG) {
                CamLog.d("Recorder doesn't exists, so this request is refused.");
            }
            this.mIsRecording = false;
        }
    }

    public void pauseRecording() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        try {
            if (this.mVideoRecorder == null || !this.mVideoRecorder.isRecording()) {
                return;
            }
            this.mVideoRecorder.pause();
        } catch (RecorderException unused) {
            throw new RuntimeException("pauseRecording():[Failed to pause MediaRecorder.]");
        }
    }

    public void resumeRecording() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        try {
            if (this.mVideoRecorder == null || !this.mVideoRecorder.isPaused()) {
                return;
            }
            this.mVideoRecorder.resume();
            ResearchUtil.getInstance().incrementCountRecordResume();
        } catch (RecorderException unused) {
            throw new RuntimeException("resumeRecording():[Failed to resume MediaRecorder.]");
        }
    }

    public void releaseVideo() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        releaseRecorder();
    }

    public void captureWhileRecording(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        takePicture(requestFactory$PhotoSavingRequestBuilder);
    }

    public void requestOnePreviewFrame() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.requestOnePreviewFrame(this.mCameraSessionId, this.mUiThreadHandler);
    }

    public void startObjectTracking(Rect rect, CameraParameters$ObjectTrackingCallback cameraParameters$ObjectTrackingCallback) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked position:" + rect);
        }
        this.mCameraController.startObjectTracking(this.mCameraSessionId, this.mUiThreadHandler, rect, cameraParameters$ObjectTrackingCallback);
    }

    public void stopObjectTracking() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.stopObjectTracking(this.mCameraSessionId);
    }

    public void startFusionMonitoring() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.startFusionMonitoring(this.mUiThreadHandler);
    }

    public void stopFusionMonitoring() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mCameraController.stopFusionMonitoring();
    }

    public CameraParameters$FusionResult getLatestFusionResult() {
        return this.mCameraController.getLatestFusionResult();
    }

    public boolean isObjectTrackingRunning() {
        return this.mCameraController.isObjectTrackingRunning();
    }

    public boolean isRecording() {
        return this.mIsRecording.booleanValue();
    }

    public boolean isRecorderWorking() {
        if (this.mVideoRecorder == null) {
            return false;
        }
        if (!this.mVideoRecorder.isRecording() && !this.mVideoRecorder.isPaused() && !this.mVideoRecorder.isStopping()) {
            return false;
        }
        CamLog.d("invoked isRecorderWorking() isRecording:" + this.mVideoRecorder.isRecording() + " isPaused:" + this.mVideoRecorder.isPaused() + " isStopping:" + this.mVideoRecorder.isStopping());
        return true;
    }

    public boolean canRecorderTakeSnapshot() {
        return isBypassCameraNextShotAvailable() && !this.mVideoRecorder.isStarting() && (this.mVideoRecorder.isRecording() || this.mVideoRecorder.isPaused());
    }

    public void setTorchAndCommit(boolean z) {
        if (isPreCaptureOnGoing() || isPreScanOnGoing()) {
            if (CamLog.DEBUG) {
                CamLog.d("Capturing for quick launch is on going, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked on:" + z);
        }
        setFlashMode(z ? Flash.LED_ON : Flash.LED_OFF);
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    public void setLowPower() {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("invoked");
            }
            parameters.setPowerMode("low");
            this.mCameraController.commitParameters(this.mCameraSessionId);
        }
    }

    public void setUltraLowPower() {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("invoked");
            }
            parameters.setPowerMode("ultra-low");
            this.mCameraController.commitParameters(this.mCameraSessionId);
        }
    }

    public void setPredictiveCapture(PredictiveCapture predictiveCapture) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (DebugParameterUtils.INSTANCE.isAlwaysPredictiveCaptureEnabled(getApplicationContext())) {
                CamLog.i("PredictiveCapture setting has been overwritten by DebugParameterUtils.");
                predictiveCapture = PredictiveCapture.ON;
            }
            parameters.setPredictiveCapture(predictiveCapture.getValue());
            parameters.setPredictiveCaptureNum(predictiveCapture.getCaptureNum());
        }
    }

    public void setPredictiveCaptureAndCommit(PredictiveCapture predictiveCapture) {
        CameraParameters parameters;
        if (CamLog.DEBUG && (parameters = getParameters(this.mCameraSessionId)) != null) {
            String predictiveCapture2 = parameters.getPredictiveCapture();
            if (!predictiveCapture.getValue().equals(predictiveCapture2)) {
                CamLog.d("PredictiveCapture setting was changed : " + predictiveCapture2 + " -> " + predictiveCapture.getValue());
            }
        }
        setPredictiveCapture(predictiveCapture);
        this.mBypassCameraController.commitParameters(this.mCameraSessionId);
    }

    public void setEv(Ev ev) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("invoked value:" + ev);
            }
            parameters.setExposureCompensation(ev.getIntValue());
        }
    }

    public void setFocusMode(FocusMode focusMode) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + focusMode + "video:" + this.mIsVideo);
        }
        if (this.mIsVideo) {
            parameters.setFocusMode(focusMode.getValueForVideo());
        } else {
            parameters.setFocusMode(focusMode.getValue());
        }
        if (!PlatformCapability.isFocusSupported(parameters.getCameraId())) {
            CamLog.d("Camera focus isn't supported. FocusArea is not set.");
        } else {
            resetFocusAreaAndRect(focusMode);
        }
        if (FocusMode.OBJECT_TRACKING.equals(focusMode)) {
            return;
        }
        stopObjectTracking();
    }

    public void resetFocusAreaAndRect(FocusMode focusMode) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + focusMode);
        }
        if (focusMode != null) {
            parameters.setFocusArea(focusMode.getFocusArea());
        }
        setFocusRect(new Rect());
    }

    private void setFocusRect(Rect rect) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (PlatformCapability.getMaxNumFocusAreas(getCameraId()) < 1) {
            if (CamLog.DEBUG) {
                CamLog.d("Focus area change is not supported, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked rect:" + rect);
        }
        if (rect.isEmpty()) {
            if (parameters.getFocusArea().equals("user")) {
                Rect activeArraySize = PlatformCapability.getActiveArraySize(getCameraId());
                int iCenterX = activeArraySize.centerX();
                int iCenterY = activeArraySize.centerY();
                rect.set(iCenterX, iCenterY, iCenterX + 1, iCenterY + 1);
            } else {
                rect = new Rect();
            }
        } else {
            parameters.setFocusArea("user");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(rect);
        parameters.setFocusRectangles(arrayList);
    }

    public void setHdr(Hdr hdr) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("invoked value:" + hdr);
            }
            parameters.setStillHdr(hdr.getValue());
        }
    }

    public void setIso(Iso iso) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + iso + " shutter-speed:" + parameters.getShutterSpeed());
        }
        parameters.setIso(iso.getIsoValue());
        if (iso == Iso.ISO_AUTO) {
            if (ShutterSpeed.AUTO.getShutterSpeedInNanoMillis() == parameters.getShutterSpeed()) {
                parameters.setAeMode("auto");
                return;
            } else {
                parameters.setAeMode("shutter-prio");
                return;
            }
        }
        if (ShutterSpeed.AUTO.getShutterSpeedInNanoMillis() == parameters.getShutterSpeed()) {
            parameters.setAeMode("iso-prio");
        } else if (PlatformCapability.getSupportedAeModes(parameters.getCameraId()).contains("semi-auto")) {
            parameters.setAeMode("semi-auto");
        } else {
            setShutterSpeed(ShutterSpeed.AUTO);
        }
    }

    public void setMetering(Metering metering) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + metering);
        }
        parameters.setMeteringMode(metering.getValue());
        setMeteringArea(null, metering);
    }

    public void setMeteringAreaAndCommit(Rect rect, Metering metering) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + rect);
        }
        setMeteringArea(rect != null ? new Rect(PositionConverter.getInstance().convertFromViewToActiveArray(rect)) : null, metering);
        this.mCameraController.commitParameters(this.mCameraSessionId);
    }

    private void setMeteringArea(Rect rect, Metering metering) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked area:" + rect + " metering:" + metering);
        }
        ArrayList arrayList = null;
        if (rect != null) {
            arrayList = new ArrayList();
            arrayList.add(rect);
            parameters.setMeteringMode("user");
        } else {
            parameters.setMeteringMode(metering.getValue());
        }
        parameters.setMeteringArea(arrayList);
    }

    public void setResolution(CameraInfo$CameraId cameraInfo$CameraId, Resolution resolution) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked cameraId:" + cameraInfo$CameraId + " resolution:" + resolution + " prev-resolution:" + parameters.getPictureSize() + " video:" + this.mIsVideo);
        }
        if (parameters.getPictureSize() != resolution.getPictureRect() && !this.mIsVideo) {
            this.mBypassCameraController.requestApplyBypassCameraMode();
        }
        Rect photoPreviewSize = this.mCameraController.getPhotoPreviewSize(this.mCameraSessionId, cameraInfo$CameraId, resolution.getPictureRect());
        if (photoPreviewSize != null && !this.mIsVideo) {
            parameters.setPictureSize(resolution.getPictureRect());
            setPreviewSize(photoPreviewSize);
            return;
        }
        throw new IllegalArgumentException();
    }

    private void setPreviewSize(Rect rect) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + rect);
        }
        this.mCameraController.triggerRestartPreview(this.mCameraSessionId, false);
        parameters.setPreviewSize(rect);
        Rect rectAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getRectAccordingToLayoutOrientation(rect);
        PositionConverter.getInstance().setPreviewSize(rectAccordingToLayoutOrientation.width(), rectAccordingToLayoutOrientation.height());
    }

    public void setSoftSkin(SoftSkin softSkin) {
        if (this.mIsVideo || getCameraId() == CameraInfo$CameraId.BACK) {
            if (CamLog.DEBUG) {
                CamLog.d("This request was refused. video:" + this.mIsVideo + " cameraId:" + getCameraId());
                return;
            }
            return;
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("invoked value:" + softSkin);
            }
            parameters.setSoftSkin(softSkin.getLevel(PlatformCapability.getMaxSoftSkinLevel(getCameraId())));
        }
    }

    public void setVideoStabilizer(VideoStabilizer videoStabilizer) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + videoStabilizer + " video:" + this.mIsVideo);
        }
        if (!videoStabilizer.getValue().equals(parameters.getVideoStabilizer()) && this.mIsVideo) {
            this.mBypassCameraController.requestApplyBypassCameraMode();
        }
        parameters.setVideoStabilizer(videoStabilizer.getValue());
    }

    public void setPreviewSizeAndFpsRangeForVideo(CameraInfo$CameraId cameraInfo$CameraId, VideoSize videoSize, VideoHdr videoHdr) {
        Rect videoPreviewSize;
        if (CamLog.DEBUG) {
            CamLog.d("invoked cameraId:" + cameraInfo$CameraId + " video-size:" + videoSize);
        }
        if (videoHdr == VideoHdr.HDR_ON) {
            videoPreviewSize = PlatformCapability.getPreferredPreviewSizeForHdrVideo(cameraInfo$CameraId);
        } else {
            videoPreviewSize = this.mCameraController.getVideoPreviewSize(this.mCameraSessionId, cameraInfo$CameraId, videoSize.getVideoRect());
        }
        if (videoPreviewSize != null) {
            setPreviewSize(videoPreviewSize);
            setFpsRange(CameraDeviceUtil.computePreviewFpsRange(cameraInfo$CameraId, RecordingProfile.getVideoFrameRate(videoSize, videoHdr), PlatformCapability.getSupportedPreviewFpsRange(cameraInfo$CameraId)));
            return;
        }
        throw new IllegalArgumentException();
    }

    private void setFpsRange(int[] iArr) {
        if (iArr.length > 0) {
            CameraParameters parameters = getParameters(this.mCameraSessionId);
            if (parameters == null) {
                if (CamLog.DEBUG) {
                    CamLog.d("This session has been closed, so this request was refused.");
                    return;
                }
                return;
            }
            if (CamLog.DEBUG) {
                CamLog.d("invoked min:" + iArr[0] + " max:" + iArr[1]);
            }
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
            return;
        }
        CamLog.e("Ilegal fps range is specified.");
    }

    public void setVideoSize(VideoSize videoSize) {
        if (videoSize == null) {
            CamLog.e("Ilegal video size is specified.");
            return;
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + videoSize + " prev:" + parameters.getVideoSize() + " video:" + this.mIsVideo);
        }
        if (parameters.getVideoSize() != videoSize && this.mIsVideo) {
            this.mBypassCameraController.requestApplyBypassCameraMode();
        }
        parameters.setVideoSize(videoSize);
        if (this.mIsVideo) {
            setPreviewSizeAndFpsRangeForVideo(parameters.getCameraId(), videoSize, parameters.getVideoHdr());
        }
    }

    public void setWhiteBalance(WhiteBalance whiteBalance) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("invoked value:" + whiteBalance);
            }
            parameters.setWhiteBalance(whiteBalance.getValue());
        }
    }

    public void setSlowMotion(com.sonyericsson.android.camera.configuration.parameters.SlowMotion slowMotion) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + slowMotion + " video:" + this.mIsVideo);
        }
        if (parameters.getSlowMotion() == slowMotion) {
            return;
        }
        if (this.mIsVideo) {
            this.mBypassCameraController.requestApplyBypassCameraMode();
        }
        parameters.setSlowMotion(slowMotion);
        switch (CameraDeviceHandler$6.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[slowMotion.ordinal()]) {
            case 1:
            case 2:
                parameters.setExposureTimeLimit((long) Math.ceil(1.0E9d / PlatformCapability.getSuperSlowFrameRate(parameters.getCameraId(), parameters.getVideoSize())));
                break;
            default:
                parameters.setExposureTimeLimit(PlatformCapability.getMinExposureTimeLimit(parameters.getCameraId()));
                break;
        }
    }

    public void commit() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked pre-process:" + this.mPreProcessState + " remain-saving-photo:" + getRemainSavingPhotoRequestCount());
        }
        this.mCameraController.commit(this.mCameraSessionId);
        this.mBypassCameraController.commit(this.mCameraSessionId);
        if ((this.mPreProcessState == CameraDeviceHandler$PreProcessState.NOT_STARTED || this.mPreProcessState == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) && getRemainSavingPhotoRequestCount() == 0) {
            this.mBypassCameraController.prepareCaptureImageReader(this.mCameraSessionId, null);
        }
    }

    public void setCapturingMode(CapturingMode capturingMode) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + capturingMode + " video:" + this.mIsVideo);
        }
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
                return;
            }
            return;
        }
        if (this.mIsVideo != capturingMode.isVideo()) {
            this.mIsVideo = capturingMode.isVideo();
            this.mBypassCameraController.requestApplyBypassCameraMode();
        }
        if (capturingMode != CapturingMode.VIDEO && parameters.getVideoHdr() != VideoHdr.HDR_OFF) {
            parameters.setVideoHdr(VideoHdr.HDR_OFF);
        }
        setZoom(0.0f);
        if (!this.mIsVideo) {
            setFpsRange(CameraDeviceUtil.computePreviewFpsRange(getCameraId(), PlatformCapability.getMaxPreviewFps(getCameraId()), PlatformCapability.getSupportedPreviewFpsRange(getCameraId())));
        }
        this.mCameraController.triggerRestartPreview(this.mCameraSessionId, true);
    }

    public void setShutterSpeed(ShutterSpeed shutterSpeed) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + shutterSpeed + "iso:" + parameters.getIso());
        }
        parameters.setShutterSpeed(shutterSpeed.getShutterSpeedInNanoMillis());
        if (shutterSpeed == ShutterSpeed.AUTO) {
            if (Iso.ISO_AUTO.getIsoValue() == parameters.getIso()) {
                parameters.setAeMode("auto");
                return;
            } else {
                parameters.setAeMode("iso-prio");
                return;
            }
        }
        if (Iso.ISO_AUTO.getIsoValue() == parameters.getIso()) {
            parameters.setAeMode("shutter-prio");
        } else if (PlatformCapability.getSupportedAeModes(parameters.getCameraId()).contains("semi-auto")) {
            parameters.setAeMode("semi-auto");
        } else {
            setIso(Iso.ISO_AUTO);
        }
    }

    public void setFocusRange(FocusRange focusRange) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + focusRange + " video:" + this.mIsVideo + " focus-mode:" + parameters.getFocusMode());
        }
        if (this.mIsVideo) {
            return;
        }
        if (focusRange == FocusRange.AF) {
            if (PlatformCapability.isFocusSupported(parameters.getCameraId())) {
                parameters.setFocusMode("continuous-picture");
                return;
            } else {
                parameters.setFocusMode("fixed");
                return;
            }
        }
        if (!"manual".equals(parameters.getFocusMode())) {
            stopObjectTracking();
        }
        parameters.setFocusMode("manual");
        parameters.setFocusArea("center");
        parameters.setFocusRectangles(null);
        if (FocusRange.DEFAULT == focusRange) {
            parameters.setFocusRange(CameraParameters.MANUAL_FOCUS_1M.floatValue());
        } else {
            parameters.setFocusRange(focusRange.getFocusRange(parameters.getCameraId()));
        }
    }

    public void setFusionMode(FusionMode fusionMode) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
            }
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("invoked value:" + fusionMode);
            }
            parameters.setFusionMode(fusionMode.getValue());
        }
    }

    public void setDistortionCorrection(DistortionCorrection distortionCorrection) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + distortionCorrection);
        }
        if (!PlatformCapability.isDistortionCorrectionSupported(getCameraId()) || this.mIsVideo) {
            distortionCorrection = DistortionCorrection.OFF;
        }
        parameters.setDistortionCorrection(distortionCorrection.getValue());
    }

    public void setActivityForeground(boolean z) {
        this.mActivityIsInForeground = z;
    }

    public void setIsInShutdownNow(boolean z) {
        this.mIsInShutdownNow = z;
    }

    public void setVideoHdr(VideoHdr videoHdr) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked value:" + videoHdr + " prev:" + parameters.getVideoHdr());
        }
        if (parameters.getVideoHdr() != videoHdr) {
            this.mBypassCameraController.requestApplyBypassCameraMode();
            parameters.setVideoHdr(videoHdr);
            this.mCameraController.triggerRestartPreview(this.mCameraSessionId, false);
        }
    }

    public void savePreloadSettings(CapturingMode capturingMode, UserSettings userSettings, LastSettings lastSettings, boolean z) {
        CameraParameters parameters = getParameters(this.mCameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("This session has been closed, so this request was refused.");
                return;
            }
            return;
        }
        if (CamLog.DEBUG) {
            CamLog.d("invoked mode:" + capturingMode + " onde-shot:" + z + " preview-size:" + parameters.getPreviewSize());
        }
        if (parameters.getPreviewSize() == null || z) {
            return;
        }
        lastSettings.setPreviewSize(parameters.getPreviewSize(), capturingMode);
        lastSettings.setFastCapture((FastCapture) userSettings.get(UserSettingKey.FAST_CAPTURE));
        lastSettings.save();
    }

    public void prepareCaptureImageReader(CameraDeviceHandler$ImageReaderInitializedCallback cameraDeviceHandler$ImageReaderInitializedCallback) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        this.mBypassCameraController.prepareCaptureImageReader(this.mCameraSessionId, cameraDeviceHandler$ImageReaderInitializedCallback);
    }

    public boolean isBypassCameraNextShotAvailable() {
        return this.mBypassCameraController.isBypassCameraNextShotAvailable();
    }

    private void runOnCameraDeviceThread(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        this.mCameraDeviceThreadHandler.post(cameraDeviceHandler$CameraDeviceAccessTask);
    }

    private void runOnCameraDeviceThreadSync(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        this.mCameraDeviceThreadHandler.post(cameraDeviceHandler$CameraDeviceAccessTask);
        try {
            CameraDeviceHandler$CameraDeviceAccessTask.access$800(cameraDeviceHandler$CameraDeviceAccessTask).await();
        } catch (InterruptedException e) {
            CamLog.e("runOnCameraDeviceThreadSync() : Failed to await by InterruptedException", e);
        }
    }

    public ImageRetriever getStreamingImageRetriever() {
        return this.mCameraController.getStreamingImageRetriever();
    }
}
