package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.annotation.MainThread;
import android.view.Surface;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.device.CommonPlatformDependencyResolver;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus$Value;
import com.sonyericsson.cameracommon.status.eachcamera.FaceDetection;
import com.sonyericsson.cameracommon.status.eachcamera.FaceDetection$Value;
import com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification;
import com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification$Value;
import com.sonyericsson.cameracommon.status.eachcamera.ObjectTracking;
import com.sonyericsson.cameracommon.status.eachcamera.ObjectTracking$Value;
import com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition;
import com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition$Value;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
class CameraController {
    private static final CaptureRequestDumper$Type CAPTURE_REQUEST_DUMP_TYPE = CaptureRequestDumper$Type.DIFF;
    private final Context mApplicationContext;
    private final CameraController$CameraControllerCallback mCallback;
    private final CameraDeviceHandler$CameraDeviceHandlerInquirer mCameraDeviceHandler;
    private Handler mCameraDeviceStatusThreadHandler;
    private CameraManager mCameraManager;
    private ImageRetriever mCaptureImageRetriever;
    private CaptureRequestDumper mCaptureRequestDumper;
    private CaptureRequestHolder mCaptureRequestHolder;
    private final Object mCaptureResultCheckerLock;
    private final Set<CaptureResultCheckerBase> mCaptureResultCheckerSet;
    private CaptureResultHolder mCaptureResultHolder;
    private ExecutorService mCaptureSessionCallbackExecutor;
    private CameraController$ConfigStateCallback mConfigStateCallback;
    private final Object mCurrentDeviceStatusLock;
    private final CameraController$OnFaceDetectionCallback mOnFaceDetectionCallback;
    private final CameraController$OnFusionResultChangedCallback mOnFusionConditionChangedCallback;
    private final Set<CameraDeviceHandler$OnPreviewStartedListener> mOnPreviewStartedListenerSet;
    private final CameraController$OnSceneModeChangedCallback mOnSceneModeChangedCallback;
    private OutputConfiguration mOutputConfiguration;
    private CameraController$PreviewSessionRequest mPrevPreviewSessionRequest;
    private final CameraController$PreviewFrameReceiver mPreviewFrameReceiver;
    private CameraController$PreviewSessionRequest mPreviewRequest;
    private final CameraController$RequestOneImageRetrieverCallback mRequestOneImageRetrieverCallback;
    private CameraController$CameraStateCallback mStateCallback;
    private ImageReader mStreamingImageReader;
    private ImageReader mVideoThumbnailImageReader;
    private CameraDevice mCameraDevice = null;
    private CameraCaptureSession mCaptureSession = null;
    private Surface mPreviewSurface = null;
    private int mReceivedResultCount = 0;
    private Rect mLastCropRegion = new Rect(0, 0, 0, 0);
    private boolean mIsNeedCheckCropRegion = false;
    private ObjectTrackingResultChecker mObjectTrackingResultChecker = null;
    private SceneRecognitionResultChecker mSceneConditionRecognitionResultChecker = null;
    private FaceDetectionResultChecker mFaceDetectionResultChecker = null;
    private FusionResultChecker mFusionResultChecker = null;
    private CameraDeviceHandler$CameraDeviceStatus mCurrentDeviceStatus = CameraDeviceHandler$CameraDeviceStatus.STATUS_RELEASED;
    private boolean mIsCameraParametersReady = false;
    private final Object mOnPreviewStartedListenerLock = new Object();
    private final List<CameraController$OneShotCaptureTask> mOneShotCaptureTaskPendingList = new ArrayList();

    static /* synthetic */ CameraController$CameraControllerCallback access$000(CameraController cameraController) {
        return cameraController.mCallback;
    }

    static /* synthetic */ CameraDeviceHandler$CameraDeviceHandlerInquirer access$1000(CameraController cameraController) {
        return cameraController.mCameraDeviceHandler;
    }

    static /* synthetic */ CameraController$CameraStateCallback access$1100(CameraController cameraController) {
        return cameraController.mStateCallback;
    }

    static /* synthetic */ CameraController$CameraStateCallback access$1102(CameraController cameraController, CameraController$CameraStateCallback cameraController$CameraStateCallback) {
        cameraController.mStateCallback = cameraController$CameraStateCallback;
        return cameraController$CameraStateCallback;
    }

    static /* synthetic */ Handler access$1300(CameraController cameraController) {
        return cameraController.mCameraDeviceStatusThreadHandler;
    }

    static /* synthetic */ CameraManager access$1400(CameraController cameraController) {
        return cameraController.mCameraManager;
    }

    static /* synthetic */ void access$1500(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$CameraSessionInfo cameraDeviceHandler$CameraSessionInfo, CameraDeviceHandler$ErrorCode cameraDeviceHandler$ErrorCode) {
        cameraController.onCameraOtherErrorDetected(cameraDeviceHandler$CameraSessionId, cameraDeviceHandler$CameraSessionInfo, cameraDeviceHandler$ErrorCode);
    }

    static /* synthetic */ CaptureRequestHolder access$1700(CameraController cameraController) {
        return cameraController.mCaptureRequestHolder;
    }

    static /* synthetic */ CameraDevice access$1800(CameraController cameraController) {
        return cameraController.mCameraDevice;
    }

    static /* synthetic */ CameraDevice access$1802(CameraController cameraController, CameraDevice cameraDevice) {
        cameraController.mCameraDevice = cameraDevice;
        return cameraDevice;
    }

    static /* synthetic */ List access$2000(CameraController cameraController) {
        return cameraController.mOneShotCaptureTaskPendingList;
    }

    static /* synthetic */ Context access$2100(CameraController cameraController) {
        return cameraController.getApplicationContext();
    }

    static /* synthetic */ CameraCaptureSession access$2200(CameraController cameraController) {
        return cameraController.mCaptureSession;
    }

    static /* synthetic */ CameraCaptureSession access$2202(CameraController cameraController, CameraCaptureSession cameraCaptureSession) {
        cameraController.mCaptureSession = cameraCaptureSession;
        return cameraCaptureSession;
    }

    static /* synthetic */ CaptureRequestDumper access$2300(CameraController cameraController) {
        return cameraController.mCaptureRequestDumper;
    }

    static /* synthetic */ CaptureRequestDumper access$2302(CameraController cameraController, CaptureRequestDumper captureRequestDumper) {
        cameraController.mCaptureRequestDumper = captureRequestDumper;
        return captureRequestDumper;
    }

    static /* synthetic */ OutputConfiguration access$2400(CameraController cameraController) {
        return cameraController.mOutputConfiguration;
    }

    static /* synthetic */ OutputConfiguration access$2402(CameraController cameraController, OutputConfiguration outputConfiguration) {
        cameraController.mOutputConfiguration = outputConfiguration;
        return outputConfiguration;
    }

    static /* synthetic */ Surface access$2500(CameraController cameraController) {
        return cameraController.mPreviewSurface;
    }

    static /* synthetic */ Surface access$2502(CameraController cameraController, Surface surface) {
        cameraController.mPreviewSurface = surface;
        return surface;
    }

    static /* synthetic */ ImageRetriever access$2602(CameraController cameraController, ImageRetriever imageRetriever) {
        cameraController.mCaptureImageRetriever = imageRetriever;
        return imageRetriever;
    }

    static /* synthetic */ void access$2700(CameraController cameraController) {
        cameraController.releaseStreamingImageReader();
    }

    static /* synthetic */ void access$2800(CameraController cameraController) {
        cameraController.releaseVideoImageReader();
    }

    static /* synthetic */ void access$3600(CameraController cameraController, int i, int i2) {
        cameraController.prepareVideoImageReader(i, i2);
    }

    static /* synthetic */ void access$3800(CameraController cameraController, int i, int i2) {
        cameraController.prepareStreamingImageReader(i, i2);
    }

    static /* synthetic */ CameraController$ConfigStateCallback access$3900(CameraController cameraController) {
        return cameraController.mConfigStateCallback;
    }

    static /* synthetic */ CameraController$ConfigStateCallback access$3902(CameraController cameraController, CameraController$ConfigStateCallback cameraController$ConfigStateCallback) {
        cameraController.mConfigStateCallback = cameraController$ConfigStateCallback;
        return cameraController$ConfigStateCallback;
    }

    static /* synthetic */ ImageReader access$4100(CameraController cameraController) {
        return cameraController.mStreamingImageReader;
    }

    static /* synthetic */ ImageReader access$4200(CameraController cameraController) {
        return cameraController.mVideoThumbnailImageReader;
    }

    static /* synthetic */ ExecutorService access$4400(CameraController cameraController) {
        return cameraController.mCaptureSessionCallbackExecutor;
    }

    static /* synthetic */ boolean access$4600(CameraController cameraController) {
        return cameraController.mIsNeedCheckCropRegion;
    }

    static /* synthetic */ boolean access$4602(CameraController cameraController, boolean z) {
        cameraController.mIsNeedCheckCropRegion = z;
        return z;
    }

    static /* synthetic */ int access$4700(CameraController cameraController) {
        return cameraController.mReceivedResultCount;
    }

    static /* synthetic */ int access$4702(CameraController cameraController, int i) {
        cameraController.mReceivedResultCount = i;
        return i;
    }

    static /* synthetic */ int access$4708(CameraController cameraController) {
        int i = cameraController.mReceivedResultCount;
        cameraController.mReceivedResultCount = i + 1;
        return i;
    }

    static /* synthetic */ CaptureRequestDumper$Type access$4800() {
        return CAPTURE_REQUEST_DUMP_TYPE;
    }

    static /* synthetic */ void access$5400(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        cameraController.notifyOnPreviewStarted(cameraDeviceHandler$CameraSessionId);
    }

    static /* synthetic */ CaptureResultHolder access$5500(CameraController cameraController) {
        return cameraController.mCaptureResultHolder;
    }

    static /* synthetic */ Object access$5600(CameraController cameraController) {
        return cameraController.mCaptureResultCheckerLock;
    }

    static /* synthetic */ Set access$5700(CameraController cameraController) {
        return cameraController.mCaptureResultCheckerSet;
    }

    static /* synthetic */ Rect access$5800(CameraController cameraController) {
        return cameraController.mLastCropRegion;
    }

    static /* synthetic */ Rect access$5802(CameraController cameraController, Rect rect) {
        cameraController.mLastCropRegion = rect;
        return rect;
    }

    static /* synthetic */ CameraController$PreviewFrameReceiver access$5900(CameraController cameraController) {
        return cameraController.mPreviewFrameReceiver;
    }

    static /* synthetic */ boolean access$6500(CameraController cameraController) {
        return cameraController.isSceneRecognitionRunning();
    }

    static /* synthetic */ boolean access$6600(CameraController cameraController) {
        return cameraController.isFaceDetectionRunning();
    }

    void dump(StringBuilder sb) {
        sb.append("mCameraDevice:" + this.mCameraDevice + ",");
        sb.append("mCaptureSession:" + this.mCaptureSession + ",");
        sb.append("mOutputConfiguration:" + this.mOutputConfiguration + ",");
        sb.append("mStreamingImageReader:" + this.mStreamingImageReader + ",");
        sb.append("mVideoThumbnailImageReader:" + this.mVideoThumbnailImageReader + ",");
        sb.append("mPreviewSurface:" + this.mPreviewSurface + ",");
        sb.append("mCurrentDeviceStatus:" + this.mCurrentDeviceStatus + ",");
    }

    void setOnPreviewStartedListener(CameraDeviceHandler$OnPreviewStartedListener cameraDeviceHandler$OnPreviewStartedListener) {
        synchronized (this.mOnPreviewStartedListenerLock) {
            this.mOnPreviewStartedListenerSet.add(cameraDeviceHandler$OnPreviewStartedListener);
        }
    }

    void removeOnPreviewStartedListener() {
        synchronized (this.mOnPreviewStartedListenerLock) {
            this.mOnPreviewStartedListenerSet.clear();
        }
    }

    private void notifyOnPreviewStarted(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        synchronized (this.mOnPreviewStartedListenerLock) {
            Iterator<CameraDeviceHandler$OnPreviewStartedListener> it = this.mOnPreviewStartedListenerSet.iterator();
            while (it.hasNext()) {
                it.next().onPreviewStarted(cameraDeviceHandler$CameraSessionId);
            }
            this.mOnPreviewStartedListenerSet.clear();
        }
    }

    private Context getApplicationContext() {
        return this.mApplicationContext;
    }

    CameraController(Context context, CameraController$CameraControllerCallback cameraController$CameraControllerCallback, CameraDeviceHandler$CameraDeviceHandlerInquirer cameraDeviceHandler$CameraDeviceHandlerInquirer) {
        this.mCameraManager = null;
        this.mCaptureRequestHolder = null;
        this.mCaptureResultHolder = null;
        this.mCameraDeviceStatusThreadHandler = null;
        this.mCaptureSessionCallbackExecutor = null;
        this.mApplicationContext = context;
        HandlerThread handlerThread = new HandlerThread("StatusCallback", 10);
        handlerThread.start();
        this.mCameraDeviceStatusThreadHandler = new Handler(handlerThread.getLooper());
        this.mCaptureSessionCallbackExecutor = ThreadUtil.buildExecutor("CameraCaptureSessionCallback", 10);
        this.mOnSceneModeChangedCallback = new CameraController$OnSceneModeChangedCallback(this, null);
        this.mOnFaceDetectionCallback = new CameraController$OnFaceDetectionCallback(this, null);
        this.mOnFusionConditionChangedCallback = new CameraController$OnFusionResultChangedCallback(this, null);
        this.mRequestOneImageRetrieverCallback = new CameraController$RequestOneImageRetrieverCallback(this, null);
        this.mCurrentDeviceStatusLock = new Object();
        this.mCaptureResultCheckerLock = new Object();
        this.mPreviewFrameReceiver = new CameraController$PreviewFrameReceiver(null);
        this.mCaptureResultCheckerSet = new HashSet();
        this.mOnPreviewStartedListenerSet = new HashSet();
        this.mCallback = cameraController$CameraControllerCallback;
        this.mCameraDeviceHandler = cameraDeviceHandler$CameraDeviceHandlerInquirer;
        this.mCameraManager = (CameraManager) context.getSystemService("camera");
        this.mCaptureRequestHolder = new CaptureRequestHolder();
        this.mCaptureResultHolder = new CaptureResultHolder();
    }

    void initializeCaptureRequest(CapturingMode capturingMode) {
        this.mCaptureRequestHolder.setDefault(capturingMode.getCameraId());
    }

    void openCamera(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture) {
        CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId).setRequested(CameraDeviceHandler$OpenCloseRequestStatus.CAMERA_OPENING);
        this.mCameraDeviceHandler.postCameraDeviceThread(new CameraController$OpenCameraTask(this, cameraDeviceHandler$CameraSessionId, fastCapture, null));
    }

    void closeCamera(boolean z, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        stopSceneRecognition(cameraDeviceHandler$CameraSessionId);
        stopFaceDetection(cameraDeviceHandler$CameraSessionId);
        stopObjectTracking(cameraDeviceHandler$CameraSessionId);
        this.mIsCameraParametersReady = false;
        synchronized (this.mCaptureResultCheckerLock) {
            this.mCaptureResultCheckerSet.clear();
            this.mSceneConditionRecognitionResultChecker = null;
        }
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId);
        if (openCloseStatusInfo == null || openCloseStatusInfo.isCloseCameraTaskRequested()) {
            return;
        }
        openCloseStatusInfo.setRequested(CameraDeviceHandler$OpenCloseRequestStatus.CAMERA_CLOSING);
        CameraController$CloseCameraTask cameraController$CloseCameraTask = new CameraController$CloseCameraTask(this, cameraDeviceHandler$CameraSessionId, null);
        if (z) {
            this.mCameraDeviceHandler.postCameraDeviceThreadSync(cameraController$CloseCameraTask);
        } else {
            this.mCameraDeviceHandler.postCameraDeviceThread(cameraController$CloseCameraTask);
        }
    }

    void stopPreview(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCameraDeviceHandler.postCameraDeviceThread(new CameraController$StopPreviewTask(this, cameraDeviceHandler$CameraSessionId, null));
    }

    void stopPreviewTaskSynchronized(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mCameraDeviceHandler.postCameraDeviceThreadSync(new CameraController$StopPreviewTask(this, cameraDeviceHandler$CameraSessionId, null));
        triggerRestartPreview(cameraDeviceHandler$CameraSessionId, false);
    }

    private void closeSession(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mPrevPreviewSessionRequest = null;
        this.mCameraDeviceHandler.postCameraDeviceThread(new CameraController$CloseSessionTask(this, cameraDeviceHandler$CameraSessionId, null));
        triggerRestartPreview(cameraDeviceHandler$CameraSessionId, false);
    }

    synchronized void commitParameters(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            CamLog.w("Cannot get Parameters.");
            return;
        }
        if (!parameters.needApply()) {
            CamLog.d("Parameters already applied.");
            return;
        }
        applyParameters(cameraDeviceHandler$CameraSessionId);
        try {
        } catch (RuntimeException e) {
            if (CamLog.DEBUG) {
                throw e;
            }
            CamLog.e("Fail to valid camera parameter. : " + e.getMessage());
        }
        if (this.mCameraDevice != null) {
            CameraParameterValidator.validate(this.mCameraDevice.getId(), this.mCaptureRequestHolder);
            try {
                if (this.mPreviewSurface != null && this.mCaptureSession != null) {
                    setRepeatingRequestInternal(cameraDeviceHandler$CameraSessionId, false);
                }
                return;
            } finally {
                parameters.applied();
            }
        }
        if (this.mPreviewSurface != null) {
            setRepeatingRequestInternal(cameraDeviceHandler$CameraSessionId, false);
        }
        return;
    }

    @MainThread
    private boolean applyParameters(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId);
        if (openCloseStatusInfo == null || openCloseStatusInfo.isCloseBypassCameraTaskRequested()) {
            return false;
        }
        CameraParameters parameters = openCloseStatusInfo.getParameters();
        if (parameters == null) {
            CamLog.d("Parameters not ready.");
            return false;
        }
        applyFocusMode(parameters);
        applyIso(parameters);
        applyShutterSpeed(parameters);
        applyFlashMode(parameters);
        applyExposureTimeLimit(parameters);
        applyEv(parameters);
        applyWhiteBalance(parameters);
        applyAmberBlueColor(parameters);
        applySoftSkin(parameters);
        applyHdr(parameters);
        applyMeteringArea(parameters);
        applyFpsRange(parameters);
        applyFusionMode(parameters);
        applyDistortionCorrection(parameters);
        applyPowerSaveMode(parameters);
        applyZoom(parameters);
        applySavingRequest(parameters);
        return parameters.needCreatePreviewSession();
    }

    boolean createPreviewSession(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        if (this.mPreviewRequest == null || !createPreviewSession(cameraDeviceHandler$CameraSessionId, this.mPreviewRequest)) {
            return false;
        }
        CamLog.d("preview was requested.");
        this.mPreviewRequest = null;
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            return true;
        }
        parameters.createPreviewSessionRequestDone();
        return true;
    }

    private boolean createPreviewSession(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest) {
        CameraDeviceHandler$CameraDeviceStatus cameraDeviceStatus = getCameraDeviceStatus();
        if (cameraDeviceStatus == CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED || cameraDeviceStatus == CameraDeviceHandler$CameraDeviceStatus.STATUS_READY) {
            if (cameraController$PreviewSessionRequest == null) {
                cameraController$PreviewSessionRequest = new CameraController$PreviewSessionRequest(cameraDeviceHandler$CameraSessionId, null);
                CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
                if (parameters != null) {
                    if (this.mCameraDeviceHandler.isVideo()) {
                        CameraController$PreviewSessionRequest.access$3100(cameraController$PreviewSessionRequest, parameters.getVideoSize());
                    }
                    CameraController$PreviewSessionRequest.access$3200(cameraController$PreviewSessionRequest, parameters.getVideoHdr() == VideoHdr.HDR_ON);
                    CameraController$PreviewSessionRequest.access$3300(cameraController$PreviewSessionRequest, parameters.getShutterTrigger() == ShutterTrigger.GESTURE_SHUTTER);
                }
            }
            if (this.mPrevPreviewSessionRequest != null && cameraController$PreviewSessionRequest.equals(this.mPrevPreviewSessionRequest)) {
                CamLog.w("Reject create preview session request due to same request: " + cameraController$PreviewSessionRequest);
                return true;
            }
            this.mPrevPreviewSessionRequest = cameraController$PreviewSessionRequest;
            this.mCameraDeviceHandler.postCameraDeviceThread(new CameraController$CreateCaptureSessionTask(this, cameraDeviceHandler$CameraSessionId, cameraController$PreviewSessionRequest, null));
            return true;
        }
        CamLog.i("Cannot create preview session due to status: " + cameraDeviceStatus);
        return false;
    }

    void setSurface(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, boolean z, Surface surface) {
        if (z) {
            this.mCameraDeviceHandler.postCameraDeviceThreadSync(new CameraController$SetSurfaceTask(this, cameraDeviceHandler$CameraSessionId, surface, null));
        } else {
            this.mCameraDeviceHandler.postCameraDeviceThread(new CameraController$SetSurfaceTask(this, cameraDeviceHandler$CameraSessionId, surface, null));
        }
    }

    void setRepeatingRequestInternal(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, boolean z) {
        CameraController$SetRepeatingRequestTask cameraController$SetRepeatingRequestTask;
        if (this.mIsCameraParametersReady) {
            if (this.mStreamingImageReader != null) {
                this.mStreamingImageReader.setOnImageAvailableListener(this.mPreviewFrameReceiver, this.mCameraDeviceHandler.getDeviceThreadHandler());
                cameraController$SetRepeatingRequestTask = new CameraController$SetRepeatingRequestTask(this, cameraDeviceHandler$CameraSessionId, this.mStreamingImageReader, null);
            } else {
                cameraController$SetRepeatingRequestTask = new CameraController$SetRepeatingRequestTask(this, cameraDeviceHandler$CameraSessionId, null, null);
            }
            if (z) {
                this.mCameraDeviceHandler.postCameraDeviceThreadSync(cameraController$SetRepeatingRequestTask);
            } else {
                this.mCameraDeviceHandler.postCameraDeviceThread(cameraController$SetRepeatingRequestTask);
            }
        }
    }

    private void setOneTimeRequestInternal(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CaptureRequestHolder captureRequestHolder, boolean z) {
        setOneTimeRequestInternal(cameraDeviceHandler$CameraSessionId, captureRequestHolder, null, z);
    }

    private void setOneTimeRequestInternal(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CaptureRequestHolder captureRequestHolder, Object obj, boolean z) {
        try {
            if (this.mCameraDevice != null) {
                CameraParameterValidator.validate(this.mCameraDevice.getId(), captureRequestHolder);
            }
        } catch (RuntimeException e) {
            if (CamLog.DEBUG) {
                throw e;
            }
            CamLog.e("Fail to valid camera parameter. : " + e.getMessage());
        }
        CameraController$SetOneTimeRequestTask cameraController$SetOneTimeRequestTask = new CameraController$SetOneTimeRequestTask(this, cameraDeviceHandler$CameraSessionId, captureRequestHolder, obj, null);
        if (z) {
            this.mCameraDeviceHandler.postCameraDeviceThreadSync(cameraController$SetOneTimeRequestTask);
        } else {
            this.mCameraDeviceHandler.postCameraDeviceThread(cameraController$SetOneTimeRequestTask);
        }
    }

    private ImageRetriever getVideoImageRetriever(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        if (this.mCaptureImageRetriever == null) {
            this.mCaptureImageRetriever = new CameraController$VideoThumbnailImageRetriever(this, cameraDeviceHandler$CameraSessionId, this.mVideoThumbnailImageReader, null);
        }
        return this.mCaptureImageRetriever;
    }

    ImageRetriever getStreamingImageRetriever() {
        if (this.mCaptureImageRetriever == null) {
            this.mCaptureImageRetriever = new CameraController$StreamingImageRetriever(this, null);
        }
        return this.mCaptureImageRetriever;
    }

    private void prepareStreamingImageReader(int i, int i2) {
        PerfLog.PREPARE_IMAGE_READER_STREAMING.begin();
        if (this.mStreamingImageReader != null) {
            if (this.mStreamingImageReader.getHeight() == i2 && this.mStreamingImageReader.getWidth() == i) {
                CamLog.d("mStreamingImageReader has bean already created");
                return;
            }
            releaseStreamingImageReader();
        }
        this.mStreamingImageReader = ImageReader.newInstance(i, i2, 35, 2);
        PerfLog.PREPARE_IMAGE_READER_STREAMING.end();
    }

    private void releaseStreamingImageReader() {
        if (this.mStreamingImageReader != null) {
            this.mStreamingImageReader.setOnImageAvailableListener(null, null);
            this.mStreamingImageReader.close();
            this.mStreamingImageReader = null;
        }
    }

    private void prepareVideoImageReader(int i, int i2) {
        PerfLog.PREPARE_IMAGE_READER_VIDEO_THUMBNAIL.begin();
        if (this.mVideoThumbnailImageReader != null) {
            if (this.mVideoThumbnailImageReader.getHeight() == i2 && this.mVideoThumbnailImageReader.getWidth() == i) {
                CamLog.d("mVideoThumbnailImageReader has bean already created");
                return;
            }
            releaseVideoImageReader();
        }
        this.mVideoThumbnailImageReader = ImageReader.newInstance(i, i2, 35, 1);
        PerfLog.PREPARE_IMAGE_READER_VIDEO_THUMBNAIL.end();
    }

    private void releaseVideoImageReader() {
        if (this.mVideoThumbnailImageReader != null) {
            this.mVideoThumbnailImageReader.setOnImageAvailableListener(null, null);
            this.mVideoThumbnailImageReader.close();
            this.mVideoThumbnailImageReader = null;
        }
    }

    void startFaceDetection(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, Handler handler) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
                return;
            }
            return;
        }
        if (isFaceDetectionRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("Face detection is already running.");
            }
        } else if (PlatformCapability.isFaceDetectionAvailable(parameters.getCameraId())) {
            this.mFaceDetectionResultChecker = new FaceDetectionResultChecker(handler, this.mOnFaceDetectionCallback);
            synchronized (this.mCaptureResultCheckerLock) {
                this.mCaptureResultCheckerSet.add(this.mFaceDetectionResultChecker);
            }
            parameters.requestApply();
            this.mCaptureRequestHolder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 1);
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE, 1);
            setRepeatingRequestInternal(cameraDeviceHandler$CameraSessionId, false);
            new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new FaceIdentification(FaceIdentification$Value.OFF)).put(new FaceDetection(FaceDetection$Value.ON)).publish();
        }
    }

    void stopFaceDetection(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
            }
        } else {
            if (!isFaceDetectionRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("Face detection is not running.");
                    return;
                }
                return;
            }
            synchronized (this.mCaptureResultCheckerLock) {
                this.mCaptureResultCheckerSet.remove(this.mFaceDetectionResultChecker);
            }
            this.mFaceDetectionResultChecker = null;
            parameters.requestApply();
            this.mCaptureRequestHolder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0);
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE, 0);
            new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new FaceIdentification(FaceIdentification$Value.OFF)).put(new FaceDetection(FaceDetection$Value.OFF)).publish();
        }
    }

    void startSceneRecognition(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, Handler handler) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
                return;
            }
            return;
        }
        if (isSceneRecognitionRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("Scene recognition is already running.");
                return;
            }
            return;
        }
        CameraDeviceHandler$CameraSessionInfo openCloseStatusInfo = CameraDeviceHandler$CameraSessionInfo.getOpenCloseStatusInfo(cameraDeviceHandler$CameraSessionId);
        if (openCloseStatusInfo != null && openCloseStatusInfo.isCloseCameraTaskRequested()) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is closing or closed.");
            }
        } else if (PlatformCapability.isSceneRecognitionSupported(parameters.getCameraId())) {
            SceneRecognitionResultChecker sceneRecognitionResultChecker = new SceneRecognitionResultChecker(handler, this.mOnSceneModeChangedCallback, parameters.getCameraId());
            synchronized (this.mCaptureResultCheckerLock) {
                this.mSceneConditionRecognitionResultChecker = sceneRecognitionResultChecker;
                this.mCaptureResultCheckerSet.add(this.mSceneConditionRecognitionResultChecker);
            }
            parameters.requestApply();
            this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_MODE, 1);
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_SCENE_DETECT_MODE, 1);
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_STILL_HDR_MODE, 2);
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE, 1);
            setRepeatingRequestInternal(cameraDeviceHandler$CameraSessionId, false);
            new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new SceneRecognition(SceneRecognition$Value.ON)).publish();
        }
    }

    void stopSceneRecognition(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
                return;
            }
            return;
        }
        if (!isSceneRecognitionRunning()) {
            if (CamLog.DEBUG) {
                CamLog.d("Scene recognition is not running.");
                return;
            }
            return;
        }
        synchronized (this.mCaptureResultCheckerLock) {
            this.mCaptureResultCheckerSet.remove(this.mSceneConditionRecognitionResultChecker);
            this.mSceneConditionRecognitionResultChecker = null;
        }
        Integer api2Value = CameraParameterConverter$StillHdr.getApi2Value(parameters.getStillHdr());
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_MODE, 1);
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_SCENE_DETECT_MODE, 0);
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_STILL_HDR_MODE, api2Value);
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE, 0);
        new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new SceneRecognition(SceneRecognition$Value.OFF)).publish();
    }

    void startObjectTracking(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, Handler handler, Rect rect, CameraParameters$ObjectTrackingCallback cameraParameters$ObjectTrackingCallback) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
                return;
            }
            return;
        }
        if (PlatformCapability.isObjectTrackingSupported(parameters.getCameraId())) {
            if (isObjectTrackingRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("Object tracking is already running.");
                }
                synchronized (this.mCaptureResultCheckerLock) {
                    this.mCaptureResultCheckerSet.remove(this.mObjectTrackingResultChecker);
                }
                this.mObjectTrackingResultChecker = null;
            }
            this.mObjectTrackingResultChecker = new ObjectTrackingResultChecker(handler, cameraParameters$ObjectTrackingCallback);
            synchronized (this.mCaptureResultCheckerLock) {
                this.mCaptureResultCheckerSet.add(this.mObjectTrackingResultChecker);
            }
            CaptureRequestHolder captureRequestHolderCopy = this.mCaptureRequestHolder.copy();
            Rect rect2 = get1x1RectOnActiveArrayCoordinate(parameters, rect.centerX(), rect.centerY());
            captureRequestHolderCopy.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER, 1);
            captureRequestHolderCopy.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA, new int[]{rect2.left, rect2.top, rect2.right, rect2.bottom});
            setOneTimeRequestInternal(cameraDeviceHandler$CameraSessionId, captureRequestHolderCopy, this.mObjectTrackingResultChecker, false);
            LocalResearchUtil.getInstance().setObjectTrackingTarget(true);
            new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new ObjectTracking(ObjectTracking$Value.ON)).publish();
        }
    }

    void stopObjectTracking(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
            }
        } else {
            if (!isObjectTrackingRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("Object tracking is not running.");
                    return;
                }
                return;
            }
            synchronized (this.mCaptureResultCheckerLock) {
                this.mCaptureResultCheckerSet.remove(this.mObjectTrackingResultChecker);
            }
            this.mObjectTrackingResultChecker = null;
            CaptureRequestHolder captureRequestHolderCopy = this.mCaptureRequestHolder.copy();
            captureRequestHolderCopy.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER, 2);
            setOneTimeRequestInternal(cameraDeviceHandler$CameraSessionId, captureRequestHolderCopy, false);
            LocalResearchUtil.getInstance().setObjectTrackingTarget(false);
            new EachCameraStatusPublisher(getApplicationContext(), parameters.getCameraId()).put(new ObjectTracking(ObjectTracking$Value.OFF)).publish();
        }
    }

    void startFusionMonitoring(Handler handler) {
        if (isFusionMonitoringRunning()) {
            throw new IllegalStateException("Fusion monitoring has already been started.");
        }
        this.mFusionResultChecker = new FusionResultChecker(handler, this.mOnFusionConditionChangedCallback);
        synchronized (this.mCaptureResultCheckerLock) {
            this.mCaptureResultCheckerSet.add(this.mFusionResultChecker);
            CamLog.d("add fusion status checker.");
        }
    }

    void stopFusionMonitoring() {
        if (isFusionMonitoringRunning()) {
            synchronized (this.mCaptureResultCheckerLock) {
                this.mCaptureResultCheckerSet.remove(this.mFusionResultChecker);
                CamLog.d("remove fusion status checker.");
            }
            this.mFusionResultChecker = null;
        }
    }

    CameraParameters$FusionResult getLatestFusionResult() {
        if (isFusionMonitoringRunning()) {
            return this.mFusionResultChecker.getLatestFusionResult();
        }
        return new CameraParameters$FusionResult();
    }

    boolean isObjectTrackingRunning() {
        return this.mObjectTrackingResultChecker != null;
    }

    private boolean isSceneRecognitionRunning() {
        return this.mSceneConditionRecognitionResultChecker != null;
    }

    private boolean isFaceDetectionRunning() {
        return this.mFaceDetectionResultChecker != null;
    }

    private boolean isFusionMonitoringRunning() {
        return this.mFusionResultChecker != null;
    }

    CameraDeviceHandler$CameraDeviceStatus getCameraDeviceStatus() {
        CameraDeviceHandler$CameraDeviceStatus cameraDeviceHandler$CameraDeviceStatus;
        synchronized (this.mCurrentDeviceStatusLock) {
            cameraDeviceHandler$CameraDeviceStatus = this.mCurrentDeviceStatus;
        }
        return cameraDeviceHandler$CameraDeviceStatus;
    }

    void setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus cameraDeviceHandler$CameraDeviceStatus) {
        synchronized (this.mCurrentDeviceStatusLock) {
            if (CamLog.DEBUG) {
                CamLog.d("CurrentDeviceState change to " + cameraDeviceHandler$CameraDeviceStatus + " from " + this.mCurrentDeviceStatus);
            }
            this.mCurrentDeviceStatus = cameraDeviceHandler$CameraDeviceStatus;
        }
    }

    void setSelectedFacePosition(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, int i, int i2) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
            }
        } else {
            CaptureRequestHolder captureRequestHolderCopy = this.mCaptureRequestHolder.copy();
            Rect rect = get1x1RectOnActiveArrayCoordinate(parameters, i, i2);
            int[] iArr = {rect.left, rect.top, rect.right, rect.bottom};
            captureRequestHolderCopy.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER, 1);
            captureRequestHolderCopy.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA, iArr);
            setOneTimeRequestInternal(cameraDeviceHandler$CameraSessionId, captureRequestHolderCopy, false);
        }
    }

    private void onCameraOtherErrorDetected(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$CameraSessionInfo cameraDeviceHandler$CameraSessionInfo, CameraDeviceHandler$ErrorCode cameraDeviceHandler$ErrorCode) {
        setCameraDeviceStatus(CameraDeviceHandler$CameraDeviceStatus.STATUS_ERROR);
        cameraDeviceHandler$CameraSessionInfo.setOtherError();
        this.mCallback.onDeviceError(cameraDeviceHandler$CameraSessionId, cameraDeviceHandler$ErrorCode);
    }

    void commit(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mIsCameraParametersReady = true;
        if (this.mPreviewRequest != null) {
            if (applyParameters(cameraDeviceHandler$CameraSessionId)) {
                closeSession(cameraDeviceHandler$CameraSessionId);
                if (createPreviewSession(cameraDeviceHandler$CameraSessionId)) {
                    CamLog.d("commit: preview trigger was fired.");
                    return;
                }
                return;
            }
            return;
        }
        commitParameters(cameraDeviceHandler$CameraSessionId);
    }

    void triggerRestartPreview(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, boolean z) {
        CamLog.d("triggerRestartPreview()");
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            return;
        }
        if (z) {
            this.mPrevPreviewSessionRequest = null;
            parameters.forceRequestCreatePreviewSession();
        }
        if (this.mPreviewRequest == null) {
            this.mPreviewRequest = new CameraController$PreviewSessionRequest(cameraDeviceHandler$CameraSessionId, null);
        }
        if (this.mCameraDeviceHandler.isVideo()) {
            CameraController$PreviewSessionRequest.access$3100(this.mPreviewRequest, parameters.getVideoSize());
        } else {
            CameraController$PreviewSessionRequest.access$3100(this.mPreviewRequest, null);
        }
        CameraController$PreviewSessionRequest.access$3200(this.mPreviewRequest, parameters.getVideoHdr() == VideoHdr.HDR_ON);
        CameraController$PreviewSessionRequest.access$3300(this.mPreviewRequest, parameters.getShutterTrigger() == ShutterTrigger.GESTURE_SHUTTER);
    }

    private void applyAmberBlueColor(CameraParameters cameraParameters) {
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_MODE, 1);
        if (cameraParameters.getWhiteBalance().equals("auto")) {
            this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AWB_MODE, 1);
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB, Integer.valueOf(cameraParameters.getAwbColorCompensationAb()));
        }
    }

    private void applyFlashMode(CameraParameters cameraParameters) {
        int api2Value = CameraParameterConverter$FlashMode.getApi2Value(cameraParameters.getFlashMode());
        int api2Value2 = CameraParameterConverter$AeMode.getApi2Value(cameraParameters.getAeMode(), cameraParameters.getFlashMode());
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_MODE, 1);
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AE_MODE, 1);
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AE_MODE, Integer.valueOf(api2Value2));
        this.mCaptureRequestHolder.set(CaptureRequest.FLASH_MODE, Integer.valueOf(api2Value));
    }

    private void applyZoom(CameraParameters cameraParameters) {
        float maxZoomRatio = ((PlatformCapability.getMaxZoomRatio(cameraParameters.getCameraId()) - 1.0f) * cameraParameters.getZoom()) + 1.0f;
        Rect activeArraySize = PlatformCapability.getActiveArraySize(cameraParameters.getCameraId());
        Rect rect = new Rect(activeArraySize);
        if (CamLog.VERBOSE) {
            CamLog.v("applyZoom() : ActiveArraySize = " + activeArraySize);
        }
        float f = 1.0f - (1.0f / maxZoomRatio);
        rect.inset((int) Math.floor(rect.width() * 0.5f * f), (int) Math.floor(rect.height() * 0.5f * f));
        if (CamLog.VERBOSE) {
            CamLog.v("applyZoom() : CropSize = " + rect);
        }
        this.mCaptureRequestHolder.set(CaptureRequest.SCALER_CROP_REGION, rect);
    }

    void changeProviderDeviceStatusToRecording(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        CameraParameters parameters = this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId);
        if (parameters == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Camera is not available.");
            }
        } else {
            Context applicationContext = getApplicationContext();
            if (applicationContext != null) {
                new EachCameraStatusPublisher(applicationContext, parameters.getCameraId()).putFromParameter(parameters, parameters.getCameraId(), this.mCameraDeviceHandler.isVideo()).put(new DeviceStatus(DeviceStatus$Value.VIDEO_RECORDING)).publish();
            }
        }
    }

    private void applyPowerSaveMode(CameraParameters cameraParameters) {
        Integer numValueOf = Integer.valueOf(CameraParameterConverter$PowerSaveMode.getApi2Value(cameraParameters.getPowerMode()));
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_POWER_SAVE_MODE, numValueOf);
        if (numValueOf.intValue() == 2 && PlatformCapability.isFaceDetectionAvailable(cameraParameters.getCameraId()) && isFaceDetectionRunning()) {
            synchronized (this.mCaptureResultCheckerLock) {
                this.mCaptureResultCheckerSet.remove(this.mFaceDetectionResultChecker);
            }
            this.mFaceDetectionResultChecker = null;
        }
    }

    private void applyEv(CameraParameters cameraParameters) {
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(cameraParameters.getExposureCompensation()));
    }

    private void applyExposureTimeLimit(CameraParameters cameraParameters) {
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT, Long.valueOf(cameraParameters.getExposureTimeLimit()));
    }

    private void applyFocusMode(CameraParameters cameraParameters) {
        Integer numValueOf = Integer.valueOf(CameraParameterConverter$FocusMode.getApi2Value(cameraParameters.getFocusMode()));
        Integer numValueOf2 = Integer.valueOf(CameraParameterConverter$FocusArea.getApi2Value(cameraParameters.getFocusArea()));
        List<Rect> focusRectangles = cameraParameters.getFocusRectangles();
        int size = focusRectangles.size();
        MeteringRectangle[] meteringRectangleArr = new MeteringRectangle[size];
        if (CamLog.VERBOSE) {
            CamLog.v("setFocusRectangles() : rectangles = " + focusRectangles);
        }
        for (int i = 0; i < size; i++) {
            Rect rect = focusRectangles.get(i);
            if (CamLog.VERBOSE) {
                CamLog.v("setFocusRectangles() : area.rect = " + rect);
            }
            if (rect.isEmpty()) {
                meteringRectangleArr[i] = new MeteringRectangle(PlatformCapability.getActiveArraySize(cameraParameters.getCameraId()), 1);
            } else {
                meteringRectangleArr[i] = new MeteringRectangle(new Rect(focusRectangles.get(i).centerX(), focusRectangles.get(i).centerY(), focusRectangles.get(i).centerX() + 1, focusRectangles.get(i).centerY() + 1), 1);
            }
            if (CamLog.VERBOSE) {
                CamLog.v("setFocusRectangles() : rectangle = " + meteringRectangleArr[i].toString());
            }
        }
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_MODE, 1);
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AF_MODE, numValueOf);
        this.mCaptureRequestHolder.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(cameraParameters.getFocusRange()));
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AF_REGION_MODE, numValueOf2);
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
    }

    private void applyHdr(CameraParameters cameraParameters) {
        Integer api2Value;
        if (isSceneRecognitionRunning() || (api2Value = CameraParameterConverter$StillHdr.getApi2Value(cameraParameters.getStillHdr())) == null) {
            return;
        }
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_STILL_HDR_MODE, api2Value);
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_STATISTICS_SCENE_DETECT_MODE, 0);
    }

    private void applyIso(CameraParameters cameraParameters) {
        int iso = cameraParameters.getIso();
        if (iso <= 0) {
            iso = Math.max(((Integer) PlatformCapability.getSupportedIsoRange(cameraParameters.getCameraId()).getLower()).intValue(), ((Integer) PlatformCapability.getSupportedFusionIsoRange(cameraParameters.getCameraId()).getLower()).intValue());
        }
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_SENSOR_SENSITIVITY_HINT, Integer.valueOf(iso));
    }

    private void applyMeteringArea(CameraParameters cameraParameters) {
        Integer numValueOf = Integer.valueOf(CameraParameterConverter$MeteringMode.getApi2Value(cameraParameters.getMeteringMode()));
        MeteringRectangle meteringRectangle = new MeteringRectangle(cameraParameters.getMeteringArea(), 1);
        if (CamLog.VERBOSE) {
            CamLog.v("applyMeteringArea() : aeRegion = (" + meteringRectangle.getRect() + ", " + meteringRectangle.getMeteringWeight() + ")");
        }
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_MODE, 1);
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_AE_REGION_MODE, numValueOf);
        if (numValueOf.intValue() == 5) {
            this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AE_REGIONS, new MeteringRectangle[]{meteringRectangle});
        } else {
            this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AE_REGIONS, new MeteringRectangle[]{new MeteringRectangle(new Rect(PlatformCapability.getActiveArraySize(cameraParameters.getCameraId())), 0)});
        }
    }

    Rect getPhotoPreviewSize(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraInfo$CameraId cameraInfo$CameraId, Rect rect) {
        if (this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId) != null) {
            CamLog.d("sony-preferred-preview-size-for-still:" + PlatformCapability.getPreferredPreviewSizeForStill(cameraInfo$CameraId));
        }
        Rect preferredPreviewSizeForStill = PlatformCapability.getPreferredPreviewSizeForStill(cameraInfo$CameraId);
        if (preferredPreviewSizeForStill.width() == 0 || preferredPreviewSizeForStill.height() == 0) {
            preferredPreviewSizeForStill = PlatformDependencyResolver.getPreferredPreviewSizeFromCaptureSize(rect);
            CamLog.w("preferredPreviewSize is invalid. Get preferredPreviewSize from captureSize: " + preferredPreviewSizeForStill);
        }
        return CommonPlatformDependencyResolver.getOptimalStillPreviewRect(rect, preferredPreviewSizeForStill, PlatformCapability.getSupportedPreviewSizes(cameraInfo$CameraId));
    }

    private void applySoftSkin(CameraParameters cameraParameters) {
        this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL, Integer.valueOf(cameraParameters.getSoftSkin()));
    }

    Rect getVideoPreviewSize(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraInfo$CameraId cameraInfo$CameraId, Rect rect) {
        if (this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId) != null) {
            CamLog.d("preferred-preview-size-for-video:" + PlatformCapability.getPreferredPreviewSizeForVideo(cameraInfo$CameraId));
        }
        Rect preferredPreviewSizeForVideo = PlatformCapability.getPreferredPreviewSizeForVideo(cameraInfo$CameraId);
        if (preferredPreviewSizeForVideo.width() == 0 || preferredPreviewSizeForVideo.height() == 0) {
            preferredPreviewSizeForVideo = PlatformDependencyResolver.getPreferredPreviewSizeFromCaptureSize(rect);
            CamLog.w("preferredPreviewSize is invalid. Get preferredPreviewSize from videoSize: " + preferredPreviewSizeForVideo);
        }
        return CommonPlatformDependencyResolver.getOptimalVideoPreviewRect(rect, preferredPreviewSizeForVideo, PlatformCapability.getSupportedPreviewSizes(cameraInfo$CameraId));
    }

    private void applyFpsRange(CameraParameters cameraParameters) {
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, cameraParameters.getFpsRange());
    }

    private void applyWhiteBalance(CameraParameters cameraParameters) {
        this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_MODE, 1);
        if (cameraParameters.getAwbColorCompensationAb() == 0) {
            this.mCaptureRequestHolder.set(CaptureRequest.CONTROL_AWB_MODE, Integer.valueOf(CameraParameterConverter$AwbMode.getApi2Value(cameraParameters.getWhiteBalance())));
        }
    }

    private void applySavingRequest(CameraParameters cameraParameters) {
        this.mCaptureRequestHolder.set(CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(cameraParameters.getRotation()));
        this.mCaptureRequestHolder.set(CaptureRequest.JPEG_GPS_LOCATION, cameraParameters.getGpsData());
    }

    private void applyShutterSpeed(CameraParameters cameraParameters) {
        long shutterSpeed = cameraParameters.getShutterSpeed();
        if (shutterSpeed > 0) {
            if (PlatformCapability.getMinShutterSpeed(cameraParameters.getCameraId()) > shutterSpeed) {
                shutterSpeed = PlatformCapability.getMinShutterSpeed(cameraParameters.getCameraId());
            } else if (shutterSpeed > PlatformCapability.getMaxShutterSpeed(cameraParameters.getCameraId())) {
                shutterSpeed = PlatformCapability.getMaxShutterSpeed(cameraParameters.getCameraId());
            }
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_SENSOR_EXPOSURE_TIME_HINT, Long.valueOf(shutterSpeed));
        }
    }

    private void applyFusionMode(CameraParameters cameraParameters) {
        Integer api2Value = CameraParameterConverter$FusionMode.getApi2Value(cameraParameters.getFusionMode());
        if (api2Value != null) {
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_FUSION_MODE, api2Value);
        }
    }

    private void applyDistortionCorrection(CameraParameters cameraParameters) {
        Integer api2Value = CameraParameterConverter$DistortionCorrection.getApi2Value(cameraParameters.getDistortionCorrection());
        if (api2Value != null) {
            this.mCaptureRequestHolder.set(SomcCaptureRequestKeys.SONYMOBILE_CONTROL_DISTORTION_CORRECTION_MODE, api2Value);
        }
    }

    void requestOnePreviewFrame(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, Handler handler) {
        if (this.mCameraDeviceHandler.getParameters(cameraDeviceHandler$CameraSessionId).getVideoHdr() != VideoHdr.HDR_ON) {
            getVideoImageRetriever(cameraDeviceHandler$CameraSessionId).requestOneShotPreviewCallback(this.mRequestOneImageRetrieverCallback, handler);
        }
    }

    private Rect get1x1RectOnActiveArrayCoordinate(CameraParameters cameraParameters, int i, int i2) {
        Rect activeArraySize = PlatformCapability.getActiveArraySize(cameraParameters.getCameraId());
        int i3 = i + 1;
        int i4 = i2 + 1;
        if (activeArraySize.contains(i3, i4)) {
            return new Rect(i, i2, i3, i4);
        }
        if (activeArraySize.contains(i, i2)) {
            return new Rect(i - 1, i2 - 1, i, i2);
        }
        int iCenterX = activeArraySize.centerX();
        int iCenterY = activeArraySize.centerY();
        return new Rect(iCenterX, iCenterY, iCenterX + 1, iCenterY + 1);
    }

    AfParametersReflectedChecker createAfParametersResultChecker(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, Handler handler) {
        return new AfParametersReflectedChecker(handler, new CameraController$RequestSnapshotReadyAfterAfParametersReflected(this, cameraDeviceHandler$CameraSessionId, null), this.mCaptureRequestHolder.copy());
    }

    boolean isAfParametersReflectedToDevice(AfParametersReflectedChecker afParametersReflectedChecker) {
        CaptureResult latest = this.mCaptureResultHolder.getLatest();
        return latest != null && afParametersReflectedChecker.checkSync(latest);
    }

    Runnable requestSnapshotReadyAfterAfParametersReflected(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, AfParametersReflectedChecker afParametersReflectedChecker) {
        synchronized (this.mCaptureResultCheckerLock) {
            this.mCaptureResultCheckerSet.add(afParametersReflectedChecker);
        }
        return new CameraController$1(this, afParametersReflectedChecker, cameraDeviceHandler$CameraSessionId);
    }
}
