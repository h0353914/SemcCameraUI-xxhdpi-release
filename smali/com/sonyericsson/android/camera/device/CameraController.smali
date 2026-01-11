.class Lcom/sonyericsson/android/camera/device/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;,
        Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;,
        Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;,
        Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;,
        Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnAutoHdrResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnAutoNightResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;,
        Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;,
        Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;,
        Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;,
        Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;,
        Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;,
        Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CaptureTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;,
        Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;
    }
.end annotation


# static fields
.field private static final AE_CONVERGED_TIME_OUT:I = 0xfa0

.field private static final CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

.field private static final INVALID_OPERATION:I = -0x1

.field private static final NIGHT_PORTRAIT_CAPTURE_NUM:I = 0x4

.field private static final ONE_THIRTY_US:J = 0x1fca055L

.field private static final PRECAPTURE_NUM_FIVE:I = 0x5

.field private static final PRECAPTURE_NUM_ONE:I = 0x1

.field private static final PRECAPTURE_NUM_SIX:I = 0x6

.field private static final PRECAPTURE_NUM_THREE:I = 0x3

.field private static final QUICKCAPTURE_NUM:I = 0x6

.field private static final QUICK_CAPTURE_DELAY:J = 0x8cL

.field private static final TAG:Ljava/lang/String; = "CameraController"

.field static isPreProcessRequiredFrom:Z


# instance fields
.field private isBurstOnGoing:Z

.field private mAELatch:Ljava/util/concurrent/CountDownLatch;

.field private mAeDoneLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;

.field private final mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

.field private final mApplicationContext:Landroid/content/Context;

.field private mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

.field private mAutoHdrResultChecker:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

.field private mAutoNightResultChecker:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

.field private mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

.field private mBurstCaptureRequestCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

.field private final mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

.field private mCameraAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

.field private mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCaptureImageReader:Landroid/media/ImageReader;

.field private mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field private mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

.field private mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

.field private final mCaptureResultCheckerLock:Ljava/lang/Object;

.field private final mCaptureResultCheckerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

.field private mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

.field private volatile mCurrentAeState:I

.field private volatile mCurrentAfState:I

.field private volatile mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

.field private mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field private final mCurrentDeviceStatusLock:Ljava/lang/Object;

.field private volatile mCurrentLightCondition:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

.field private mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field private volatile mDetectedFaces:[Landroid/hardware/camera2/params/Face;

.field private volatile mDeviceId:Ljava/lang/String;

.field private mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

.field private mFinishBurstResultChecker:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

.field private mForceStopCallback:Z

.field private mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

.field private mImageWriter:Landroid/media/ImageWriter;

.field private mInCaptureDataDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;",
            ">;"
        }
    .end annotation
.end field

.field private mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

.field private mIsCameraParametersReady:Z

.field private volatile mIsCaptureAfterOpenAvailable:Z

.field private volatile mIsCaptureAvailable:Z

.field private mIsFinishBurstDone:Z

.field private volatile mLock3A:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMethodSetVendorStreamConfigMode:Ljava/lang/reflect/Method;

.field private mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

.field private mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

.field private final mOnAutoFlashChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

.field private final mOnAutoHdrChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoHdrResultChangedCallback;

.field private final mOnAutoNightChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoNightResultChangedCallback;

.field private final mOnBokehConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

.field private final mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

.field private final mOnFinishBurstResultCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;

.field private final mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

.field private mOnPreviewStartedListener:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;

.field private final mOnPreviewStartedListenerLock:Ljava/lang/Object;

.field private final mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

.field private final mOneShotCaptureTaskPendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

.field private mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field private final mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

.field private mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviousLogicalCameraMode:I

.field private mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

.field private volatile mReachBurstAvailableMaxIso:Z

.field private mReceivedResultCount:I

.field private mReceivedResultCount2:I

.field private mReceivedResultCount3:I

.field private mReceivedResultCount4:I

.field private mRecordingSurface:Landroid/view/Surface;

.field private mRepeatingRequestTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

.field mReprocessListener:Lcom/sonyericsson/android/camera/device/zsl/DataListener;

.field private mReprocessStreamSize:Landroid/graphics/Rect;

.field private final mRequestOneImageRetrieverCallback:Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

.field private mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

.field private mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

.field private volatile mShouldTriggerFlash:Z

.field private mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

.field private final mStateCheckerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/device/StateCheckerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamingImageReader:Landroid/media/ImageReader;

.field private mTotalIso:I

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVideoThumbnailImageReader:Landroid/media/ImageReader;

.field private mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

.field private mZslCaptureTaskDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;",
            ">;"
        }
    .end annotation
.end field

.field private mZslImageReader:Landroid/media/ImageReader;

.field private previewRequestLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAeDoneLatch(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeDoneLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAeStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAfStateChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApplicationContext(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDeviceStatusThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraManager(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureResultCheckerLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureResultCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureResultHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSessionCallbackExecutor(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCropRegionChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageWriter(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageWriter;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCaptureDataDeque(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mInCaptureDataDeque:Ljava/util/Deque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOneShotCaptureTaskPendingList(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewFrameReceiver(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRequest(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousLogicalCameraMode(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfile(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceivedResultCount2(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceivedResultCount3(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount3:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceivedResultCount4(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount4:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatingRequestTaskSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestTaskSet:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemiAutoStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoThumbnailImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWalkingParamStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZslCaptureTaskDeque(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslCaptureTaskDeque:Ljava/util/Deque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviewRequestLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->previewRequestLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureImageRetriever(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureRequestDumper(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConfigStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCropRegionChecker(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CropRegionChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSessionType(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDetectedFaces(Lcom/sonyericsson/android/camera/device/CameraController;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceId(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCaptureAfterOpenAvailable(Lcom/sonyericsson/android/camera/device/CameraController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAfterOpenAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCaptureAvailable(Lcom/sonyericsson/android/camera/device/CameraController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOutputConfiguration(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrevPreviewSessionRequest(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousLogicalCameraMode(Lcom/sonyericsson/android/camera/device/CameraController;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceivedResultCount2(Lcom/sonyericsson/android/camera/device/CameraController;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceivedResultCount3(Lcom/sonyericsson/android/camera/device/CameraController;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount3:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceivedResultCount4(Lcom/sonyericsson/android/camera/device/CameraController;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount4:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessStreamSize:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcapture(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureBurst(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigImageWriter(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->configImageWriter(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateAePrecaptureTriggerRequest(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->createAePrecaptureTriggerRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateAfTriggerRequest(Lcom/sonyericsson/android/camera/device/CameraController;Z)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createAfTriggerRequest(Z)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreatePreviewSession(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdealLaunchAndCapture(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->dealLaunchAndCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoQuickPreScan(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->doQuickPreScan(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAperture(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getAperture(Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCaptureModeValue(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCaptureModeValue(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentCameraId(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDeltaEV(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getDeltaEV(Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetEV(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getEV(Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetEnvironmentLuxIndex(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getEnvironmentLuxIndex(Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetExpTime(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getExpTime(Landroid/hardware/camera2/TotalCaptureResult;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetISO(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getISO(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIso(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getIso(Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->getReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getSS(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->initReprocessDataFactory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDataReady(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->isDataReady(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnabledZsl(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isEnabledZsl()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFaceDetectionRunning(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSceneRecognitionRunning(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAutoFocus(Lcom/sonyericsson/android/camera/device/CameraController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->onAutoFocus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostCreateVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->postCreateVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareStreamingImageReader(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareVideoImageReader(Lcom/sonyericsson/android/camera/device/CameraController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareVideoImageReader(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecycleData(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->recycleData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseCaptureImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseImageWriter(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseImageWriter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseMultiFramePreCaptureImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseReprocessDataFactory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseStreamingImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseVideoImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseZslImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseZslImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCaptureOrientation(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setCaptureOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mskip2FramesInHDRMultiframeCapture(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->skip2FramesInHDRMultiframeCapture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAutoExposure(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoExposure(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPreCaptureForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->startPreCaptureForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTakeMainFrameForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->startTakeMainFrameForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController;->startTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAeState(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateAeState(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAfState(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateAfState(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAwbColorValue(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateAwbColorValue(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBurstAvailableState(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateBurstAvailableState(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLightCondition(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateLightCondition(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCAPTURE_REQUEST_DUMP_TYPE()Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 199
    sget-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->DIFF:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    const/4 v0, 0x0

    .line 307
    sput-boolean v0, Lcom/sonyericsson/android/camera/device/CameraController;->isPreProcessRequiredFrom:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;Landroid/os/Handler;)V
    .locals 4

    .line 2569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;

    .line 172
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;

    .line 173
    new-instance v1, Lcom/sonyericsson/android/camera/device/AfStateChecker;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/device/AfStateChecker;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    .line 174
    new-instance v1, Lcom/sonyericsson/android/camera/device/AeStateChecker;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/device/AeStateChecker;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;

    .line 176
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBurstCaptureRequestCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    .line 177
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 202
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 203
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 205
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 206
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 207
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    .line 210
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    .line 211
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 224
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mInCaptureDataDeque:Ljava/util/Deque;

    .line 225
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslCaptureTaskDeque:Ljava/util/Deque;

    const/4 v1, 0x0

    .line 237
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReachBurstAvailableMaxIso:Z

    .line 244
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestTaskSet:Ljava/util/Set;

    .line 252
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 253
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 255
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    .line 256
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I

    .line 257
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount3:I

    .line 258
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount4:I

    .line 260
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAvailable:Z

    .line 261
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAfterOpenAvailable:Z

    .line 268
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 269
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 271
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 272
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    .line 273
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    .line 274
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    .line 275
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    .line 276
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoHdrResultChecker:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    .line 277
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoNightResultChecker:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    .line 278
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFinishBurstResultChecker:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    .line 280
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMethodSetVendorStreamConfigMode:Ljava/lang/reflect/Method;

    .line 286
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 289
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 294
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 302
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    .line 312
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->isBurstOnGoing:Z

    const/4 v2, 0x1

    .line 317
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsFinishBurstDone:Z

    .line 356
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->previewRequestLock:Ljava/lang/Object;

    .line 2520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;

    .line 5341
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    .line 5576
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$20;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$20;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessListener:Lcom/sonyericsson/android/camera/device/zsl/DataListener;

    .line 2570
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    .line 2573
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "StatusCallback"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2575
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2576
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    .line 2577
    const-string v1, "CameraCaptureSessionCallback"

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2581
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    .line 2582
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    .line 2583
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    .line 2584
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnBokehConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

    .line 2585
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoFlashChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

    .line 2586
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoHdrResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoHdrResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnAutoHdrResultChangedCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoHdrChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoHdrResultChangedCallback;

    .line 2587
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoNightResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoNightResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnAutoNightResultChangedCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoNightChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoNightResultChangedCallback;

    .line 2588
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFinishBurstResultCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;

    .line 2590
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRequestOneImageRetrieverCallback:Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

    .line 2592
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    .line 2593
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    .line 2595
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    .line 2596
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    .line 2598
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    .line 2599
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 2600
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;

    .line 2601
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-direct {p2}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    .line 2602
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    invoke-direct {p2}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    .line 2604
    const-string p2, "camera"

    .line 2605
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2606
    new-instance p1, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 2607
    new-instance p1, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    return-void
.end method

.method private afLocked()Z
    .locals 2

    .line 2096
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAfState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAfState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAfState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2099
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "CameraController"

    const-string v0, "### af locked"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private applyAIClearFace(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 7262
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAIClearFace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AIClearFace;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 7263
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set AIClearFace: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAIClearFace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", value: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7264
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AI_CLEAR_FACE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyAmberBlueColor(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 6893
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

    if-nez v0, :cond_1

    .line 6894
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "AWB value not init by capture result, return"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6897
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6898
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6899
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result v0

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    .line 6900
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 6901
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6900
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6902
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 6904
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6902
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private applyBokehMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 7524
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getBokehMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7528
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 7533
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$BokehMode;->getApi2Value(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7535
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "modeValue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7536
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-eq p1, v1, :cond_3

    .line 7537
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7540
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    .line 7541
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 7542
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7541
    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7543
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7544
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7543
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 7546
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7547
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7546
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private applyBokehStrength(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    if-nez p1, :cond_1

    .line 7554
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7558
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7563
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7565
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getBokehStrength()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 7563
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyCameraMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 8

    .line 6836
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "front-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "front-wide-camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "front-wide-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "front-camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "front-scene-recognition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v7, v2

    goto :goto_0

    :sswitch_6
    const-string v1, "front-wide-scene-recognition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v7, v3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "slow-motion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v7, v4

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "video-camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v7, v5

    goto :goto_0

    :sswitch_9
    const-string v1, "scene-recognition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v2, v6

    goto :goto_1

    :pswitch_1
    move v2, v5

    goto :goto_1

    .line 6851
    :pswitch_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/16 v0, 0x66c

    if-lt p1, v0, :cond_a

    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_1

    :pswitch_3
    move v2, v4

    .line 6861
    :goto_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current mode is: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraController"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6862
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SOMC_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x793fc80a -> :sswitch_9
        -0x710bd749 -> :sswitch_8
        -0x6e24d2fe -> :sswitch_7
        -0x4a791460 -> :sswitch_6
        -0x453a02ae -> :sswitch_5
        -0x3df94319 -> :sswitch_4
        0xcd9bf49 -> :sswitch_3
        0x1c777725 -> :sswitch_2
        0x519eb5bb -> :sswitch_1
        0x540e03d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyDeNoiseMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 6872
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "CameraController"

    const-string v0, "apply DeNoise in every mode"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6873
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_TEMPORAL_DENOISE_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 6874
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6873
    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6875
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_TEMPORAL_DENOISE_PROCESS_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 6876
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6875
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6877
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CDS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    .line 6878
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6877
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyDebugExif()V
    .locals 2

    .line 7617
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isDebugExifEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 7620
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DEBUG_EXIF:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyDisableBGProcess(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7607
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getDisableBGProcess()Ljava/lang/String;

    move-result-object p1

    .line 7606
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$DisableBGProcess;->getApi2Value(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7609
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISABLE_BG_PROCESS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyDisableMotionForNight()V
    .locals 2

    .line 7625
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isMotionForNightDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 7628
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISABLE_MOTION_FOR_NIGHT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7629
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7628
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyDisplayFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 6942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCurrentCaptureMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 6943
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1

    .line 6945
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    .line 6944
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$DisPlayFlashMode;->getApi2Value(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6946
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISPLAY_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private applyDistortionCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7571
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getDistortionCorrection()Ljava/lang/String;

    move-result-object p1

    .line 7570
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$DistortionCorrection;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7573
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyEv(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7013
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7014
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getExposureCompensation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7013
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 7018
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7020
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getExposureTimeLimit()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 7018
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFlashBeforeCountdown(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7596
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashBeforeCountdown()Ljava/lang/String;

    move-result-object p1

    .line 7595
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FlashBeforeCountdown;->getApi2Value(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7598
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_FLASH_BEFORE_COUNTDOWN:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 4

    .line 6920
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FlashMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    .line 6921
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAeMode()Ljava/lang/String;

    move-result-object v1

    .line 6922
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    .line 6921
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AeMode;->getApi2Value(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6925
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 6926
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "off"

    .line 6927
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "torch"

    .line 6928
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6929
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->setFlashOff()V

    .line 6932
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 6933
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6932
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6934
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 6935
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6934
    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6938
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 16

    move-object/from16 v0, p0

    .line 7025
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->getApi2Value(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7030
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-eqz v2, :cond_1

    .line 7031
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->needsForceSetAsAutoFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7032
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 7033
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isInFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7035
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Do not reset current focus mode, keep as auto"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7041
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusArea()Ljava/lang/String;

    move-result-object v2

    .line 7040
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->getApi2Value(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7044
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusRectangles()Ljava/util/List;

    move-result-object v3

    .line 7045
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 7046
    new-array v5, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 7047
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setFocusRectangles() : rectangles = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_2
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v7, v4, :cond_7

    .line 7051
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 7052
    sget-boolean v11, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setFocusRectangles() : area.rect = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 7054
    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 7055
    iget-object v10, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    array-length v10, v10

    if-eqz v10, :cond_4

    if-ne v4, v9, :cond_4

    move v8, v9

    goto :goto_1

    .line 7058
    :cond_4
    new-instance v9, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 7059
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v9, v5, v7

    goto :goto_1

    .line 7063
    :cond_5
    new-instance v10, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v11, Landroid/graphics/Rect;

    .line 7065
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 7066
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    .line 7067
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    add-int/lit16 v14, v14, 0x1f8

    .line 7069
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    add-int/lit16 v15, v15, 0x1f8

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v10, v11, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v10, v5, v7

    .line 7075
    :goto_1
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setFocusRectangles() : rectangle = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v5, v7

    .line 7076
    invoke-virtual {v10}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 7075
    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 7079
    :cond_7
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7080
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7081
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusRange()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7082
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v8, :cond_8

    .line 7085
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->remove(Landroid/hardware/camera2/CaptureRequest$Key;)V

    goto :goto_2

    .line 7087
    :cond_8
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private applyFpsRange(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7298
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7299
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFpsRange()Landroid/util/Range;

    move-result-object p1

    .line 7298
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFusionMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7516
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFusionMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FusionMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7518
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_FUSION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7092
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getStillHdr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillHdr;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7094
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyIso(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 6

    .line 7374
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 7390
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-gtz p1, :cond_2

    .line 7379
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v4

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    .line 7380
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "set iso value: 0"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7381
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->USE_ISO_VALUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v4, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7382
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v4, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7383
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->ISO_EXP_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7384
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    :cond_1
    move p1, v2

    goto :goto_0

    .line 7387
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    .line 7388
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set iso value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7389
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->USE_ISO_VALUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->ISO_EXP_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    .line 7397
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mupdateISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V

    return-void
.end method

.method private applyIsoAndShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 7

    .line 7326
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v0

    .line 7327
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v1

    .line 7328
    const-string v3, "set iso value: "

    const-wide/16 v4, 0x0

    if-lez v0, :cond_1

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    .line 7329
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", set ss value:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7330
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->resetIsoAndShutterSpeedBySemiAuto()V

    .line 7331
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7332
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7333
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7334
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    .line 7335
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    int-to-long v3, v0

    invoke-static {p1, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mupdateISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V

    .line 7336
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mupdateSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    cmp-long v6, v1, v4

    if-gtz v6, :cond_3

    .line 7338
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", set ss value: auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7339
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIsoAndShutterSpeedBySemiAuto(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_5

    cmp-long v0, v1, v4

    if-lez v0, :cond_5

    .line 7341
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "set iso value: auto , set ss value:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7342
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIsoAndShutterSpeedBySemiAuto(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    goto :goto_0

    .line 7344
    :cond_5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "set iso value: auto , set ss value: auto "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7345
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIsoAndShutterSpeedBySemiAuto(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    :goto_0
    return-void
.end method

.method private applyIsoAndShutterSpeedBySemiAuto(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 4

    .line 7361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 7362
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "reset IsoAndShutterSpeed ByAuto"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7363
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    .line 7368
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIso(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 7369
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    return-void
.end method

.method private applyMeteringArea(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 6

    .line 7157
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v0

    .line 7156
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7160
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMeteringArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 7161
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    .line 7164
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "applyMeteringArea() : aeRegion = ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7165
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 7164
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 7167
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7167
    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7169
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7171
    new-array v0, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 7173
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "user"

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 7174
    aput-object v2, v0, v4

    goto :goto_0

    .line 7176
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 7185
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->remove(Landroid/hardware/camera2/CaptureRequest$Key;)V

    goto :goto_1

    .line 7179
    :cond_2
    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v2, Landroid/graphics/Rect;

    .line 7180
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v1, v2, v4}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v1, v0, v4

    .line 7187
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private applyNightMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7582
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getNightMode()Ljava/lang/String;

    move-result-object p1

    .line 7581
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillNightMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 7583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isBokehOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 7584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 7587
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_NIGHT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .locals 2

    .line 3257
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3258
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3262
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3264
    const-string p0, "Parameters not ready."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v0

    .line 3267
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyCameraMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3268
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDeNoiseMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3269
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3272
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3273
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDisplayFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIsoAndShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3275
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3276
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyEv(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3277
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyWhiteBalance(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3278
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyAmberBlueColor(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3279
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySoftSkin(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3280
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyAIClearFace(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3281
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3282
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyVideoHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3283
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyVideoStabilizer(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3284
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyPhotoStabilizer(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyMeteringArea(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3286
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFpsRange(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3287
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFusionMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3288
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyBokehMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3289
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyBokehStrength(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3290
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDistortionCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3291
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyVideoBacklightCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3292
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySuperResolutionZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3293
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyVideoSuperResolutionZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3294
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyNightMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3295
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFlashBeforeCountdown(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3296
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDisableBGProcess(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3297
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyPowerSaveMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3298
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3299
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3300
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDebugExif()V

    .line 3301
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDisableMotionForNight()V

    .line 3303
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->updateExtraParameter()V

    .line 3305
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->needCreatePreviewSession()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private applyPhotoStabilizer(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 7143
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    .line 7144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyPhotoStabilizer: cameraMode == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7145
    :cond_0
    const-string v0, "scene-recognition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "front-scene-recognition"

    .line 7146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "normal"

    .line 7147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "front-camera"

    .line 7148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7149
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    .line 7150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7149
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private applyPowerSaveMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 6995
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPowerMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6996
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_POWER_SAVE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6999
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7001
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7002
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7003
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7004
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7005
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 7006
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7005
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private applySavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 7312
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7313
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getGpsData()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 5

    .line 7401
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 7404
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 7405
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v0

    goto :goto_0

    .line 7407
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    .line 7406
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 7408
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v0

    .line 7411
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Set shutterSpeed value"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7412
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->ISO_EXP_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7413
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7414
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    move-wide v2, v0

    goto :goto_1

    .line 7419
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 7420
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "Set shutterSpeed value0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7421
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->ISO_EXP_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    .line 7432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mupdateSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V

    .line 7433
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIso(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 7436
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mupdateSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V

    return-void
.end method

.method private applySoftSkin(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 7242
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPowerMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7245
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 7246
    const-string v0, "Set softskin as off in for cool mode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7248
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 7251
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p1

    .line 7250
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7248
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 7253
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set softskin as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSoftSkin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7254
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7256
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSoftSkin()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7254
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private applySuperResolutionZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 7195
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSuperResolutionZoom()Ljava/lang/String;

    move-result-object p1

    .line 7194
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SuperResolutionZoom;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 7196
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applySuperResolutionZoom: value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7198
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_SUPER_RESOLUTION_ZOOM_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private applyVideoBacklightCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 7118
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoBacklightCorrection()Ljava/lang/String;

    move-result-object v0

    .line 7117
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoBacklightCorrection;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 7119
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isFhd60Fps()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7122
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "applyVideoBacklightCorrection: value "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraController"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 7124
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_VIDEO_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private applyVideoHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 7100
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7104
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoHdrMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 7105
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7106
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "video-camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_VIDEO_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 7109
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_VIDEO_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    .line 7111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7109
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private applyVideoStabilizer(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 7132
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoStabilizerMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 7133
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoOISSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7134
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 7137
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private applyVideoSuperResolutionZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 7206
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSuperResolutionZoom()Ljava/lang/String;

    move-result-object p1

    .line 7205
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoSuperResolutionZoom;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 7207
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyVideoSuperResolutionZoom: value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7209
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_VIDEO_SUPER_RESOLUTION_ZOOM_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private applyWhiteBalance(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 7303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 7304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7303
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7305
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 7306
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7307
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->getApi2Value(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7306
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 5

    .line 6959
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 6960
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 6961
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked, zoomRatio ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", cameraId ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6962
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 6961
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6963
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 6964
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6965
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked, ActiveArraySize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_1
    const p1, 0x3f1d70a4    # 0.615f

    sub-float p1, v0, p1

    float-to-double v1, p1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    const v0, 0x3f19999a    # 0.6f

    .line 6973
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "invoked, zoom ratio: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6974
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 3

    .line 1372
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "capture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_2

    .line 1374
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "capture() : CaptureSession is null"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1378
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$14;

    invoke-direct {v2, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$14;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1403
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1408
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "capture() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")V"
        }
    .end annotation

    .line 1413
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "captureBurst() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_2

    .line 1415
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "captureBurst() : CaptureSession is null"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1419
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$15;

    invoke-direct {v2, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$15;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1440
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1443
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "captureBurst() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private closeSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    const/4 v0, 0x0

    .line 2670
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 2671
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask-IA;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    const/4 v0, 0x0

    .line 2672
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method private commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    .locals 5

    .line 7507
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    .line 7508
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v1, :cond_0

    .line 7509
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p1, v0, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    const/4 v0, 0x0

    .line 7510
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    :cond_0
    return-void
.end method

.method private configImageWriter(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 3980
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configImageWriter session : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3981
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseImageWriter()V

    .line 3982
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageWriter:Landroid/media/ImageWriter;

    .line 3983
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$19;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController$19;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private createAePrecaptureTriggerRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 5

    .line 2011
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    .line 2014
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 2015
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2014
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2018
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    new-array v3, v2, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "AePrecature"

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method private createAePrecaptureTriggerRequestForNightPortrait()Landroid/hardware/camera2/CaptureRequest;
    .locals 5

    .line 2024
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    .line 2027
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 2028
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2027
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2029
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SOMC_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v4, 0x9

    .line 2030
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2029
    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2031
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE_ON_ALWAYS_FLASH_NIGHTPORTRAIT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2034
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    new-array v3, v2, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method private createAfTriggerRequest(Z)Landroid/hardware/camera2/CaptureRequest;
    .locals 5

    .line 1992
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    .line 1995
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2000
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2001
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    new-array v2, v2, [Landroid/view/Surface;

    aput-object v4, v2, v1

    aput-object p0, v2, v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0

    .line 2004
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    new-array v2, v3, [Landroid/view/Surface;

    aput-object p0, v2, v1

    invoke-virtual {v0, p1, v3, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method private createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 6

    .line 3366
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    .line 3367
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3411
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot create preview session due to status: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 3371
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest-IA;)V

    .line 3374
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 3376
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3377
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedVideo(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 3379
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v4, v5, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedVideoHdr(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 3381
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-eq v4, v5, :cond_6

    .line 3382
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getQrCodeDetection()Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v3

    .line 3380
    :goto_3
    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedCapturedFrame(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 3383
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v5

    if-ne v4, v5, :cond_7

    move v2, v3

    :cond_7
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedSlowMotion(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 3384
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 3385
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isLogicCameraOperationMode()Z

    move-result v2

    .line 3384
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedLogicCameraOperationMode(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 3386
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->isStreadyShotEnabled(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result v1

    invoke-static {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedSteadyShot(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 3389
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3390
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v1

    goto :goto_4

    :cond_9
    const/4 v1, 0x2

    .line 3393
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v1

    :goto_4
    int-to-byte v1, v1

    .line 3396
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3397
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v1, :cond_a

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3398
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Reject create preview session request due to same request: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 3400
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3401
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->onPreviewSessionConfigured(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    return v3

    .line 3406
    :cond_a
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3407
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask-IA;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return v3
.end method

.method private createVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 2155
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "invoke E"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$18;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$18;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dealLaunchAndCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 3952
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    .line 3953
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_3

    .line 3955
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/device/CameraController;->isPreProcessRequiredFrom:Z

    if-nez v0, :cond_1

    return-void

    .line 3958
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isLaunchAndCaptureDarkCondition()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3959
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->doQuickPreScan(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 3961
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_QUICK_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3962
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    .line 3964
    :goto_0
    sput-boolean v1, Lcom/sonyericsson/android/camera/device/CameraController;->isPreProcessRequiredFrom:Z

    :cond_3
    return-void
.end method

.method private doQuickPreScan(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 3970
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    .line 3971
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 3972
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p1

    .line 3973
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    .line 3974
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SOMC_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0xa

    .line 3975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3974
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3976
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->preScan()V

    return-void
.end method

.method private findBestZslStreamSize(Lcom/sonyericsson/android/camera/device/CameraParameters;)Landroid/graphics/Rect;
    .locals 4

    .line 3782
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedInputSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 3784
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 3785
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p1

    .line 3787
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 3788
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 3789
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 3795
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "zslStreamSize : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraController"

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;
    .locals 2

    .line 7651
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    add-int/lit8 p1, p2, 0x1

    add-int/lit8 v0, p3, 0x1

    .line 7652
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7653
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 7654
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7655
    new-instance p0, Landroid/graphics/Rect;

    add-int/lit8 p1, p2, -0x1

    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 7657
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    .line 7658
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    .line 7659
    new-instance p2, Landroid/graphics/Rect;

    add-int/lit8 p3, p1, 0x1

    add-int/lit8 v0, p0, 0x1

    invoke-direct {p2, p1, p0, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private getAperture(Landroid/hardware/camera2/TotalCaptureResult;)F
    .locals 1

    .line 1675
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 1676
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "### aperture : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraController"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 2525
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private getAwbColorCompensationRggbVector(I)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 3

    .line 6909
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/RggbChannelVector;->getRed()F

    move-result v0

    int-to-float p1, p1

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 6910
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/RggbChannelVector;->getGreenEven()F

    move-result v1

    .line 6911
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/RggbChannelVector;->getGreenOdd()F

    move-result v2

    .line 6912
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->getBlue()F

    move-result p0

    sub-float/2addr p0, p1

    .line 6913
    new-instance p1, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    .line 6915
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "new AWB colorGain: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/params/RggbChannelVector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraController"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private getCaptureModeValue(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    .locals 2

    .line 1703
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1704
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCurrentCaptureMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1706
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCurrentCaptureMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1707
    const-string p0, "-"

    return-object p0

    .line 1711
    :cond_1
    :try_start_0
    sget-object p0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_CAPTURE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1713
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_CAPTURE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not exists."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    move-object p0, v1

    .line 1715
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "### captureModeValue : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraController"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_3

    .line 1717
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 1

    .line 7780
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCurrentCaptureMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7784
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCurrentCaptureMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    return-object p0

    .line 7781
    :cond_1
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method private getDeltaEV(Landroid/hardware/camera2/TotalCaptureResult;)F
    .locals 1

    .line 1683
    :try_start_0
    sget-object p0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_HISTOGRAM_DELTAEV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1685
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_HISTOGRAM_DELTAEV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not exists."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1687
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "### deltaEV : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraController"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 1688
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method private getEV(Landroid/hardware/camera2/TotalCaptureResult;)F
    .locals 1

    .line 1694
    :try_start_0
    sget-object p0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_HISTOGRAM_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1696
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_HISTOGRAM_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not exists."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1698
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "### ev : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraController"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 1699
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method private getEnvironmentLuxIndex(Landroid/hardware/camera2/TotalCaptureResult;)I
    .locals 1

    .line 1647
    :try_start_0
    sget-object p0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_SENSOR_INFO_LUX_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1649
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_SENSOR_INFO_LUX_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not exists."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1652
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "### luxIndex : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraController"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 1653
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    return p0
.end method

.method private getExpTime(Landroid/hardware/camera2/TotalCaptureResult;)J
    .locals 1

    .line 1657
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 1658
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "### exptime : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraController"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1659
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private getFocusDistance(Landroid/hardware/camera2/TotalCaptureResult;)F
    .locals 1

    .line 1638
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    .line 1639
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "### distance : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraController"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method private getHDRPreCaptureNum()I
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isStillHDROn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isNormalLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1958
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSuperLowLight()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isCameraFront()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method private getISO(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    .locals 1

    .line 1669
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getTotalIso(Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ResourceConvertUtils;->convertIso(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1671
    const-string p0, "-"

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getIso(Landroid/hardware/camera2/TotalCaptureResult;)I
    .locals 1

    .line 1620
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 1621
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "### iso : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraController"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1622
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getLowLightPreCaptureNum()I
    .locals 1

    .line 1475
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSuperLowLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isCameraFront()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method private getQuickCaptureNum()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method private getReprocessStreamSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Landroid/graphics/Rect;
    .locals 2

    .line 1861
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    .line 1862
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK_DUAL:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1863
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1864
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getReprocessStreamSize, SessionType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraController"

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1866
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->findBestZslStreamSize(Lcom/sonyericsson/android/camera/device/CameraParameters;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getSS(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    .locals 4

    .line 1663
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getExpTime(Landroid/hardware/camera2/TotalCaptureResult;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ResourceConvertUtils;->convertSs(J)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1665
    const-string p0, "-"

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getScaledStreamSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1850
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    .line 1852
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedInputSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 1853
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1856
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getScaledStreamSize target is:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p2

    .line 1854
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Input size isn\'t supported:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSlowMotion(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 0

    .line 2140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2142
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "CameraController"

    const-string p1, " ### parameter is null, return SlowMotion.OFF"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2143
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0

    .line 2145
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object p0

    return-object p0
.end method

.method private getTotalIso(Landroid/hardware/camera2/TotalCaptureResult;)I
    .locals 2

    .line 1626
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1627
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 1628
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "### total iso : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraController"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1629
    :cond_0
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mTotalIso:I

    return v0
.end method

.method private getVideoImageRetriever(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 3

    .line 5779
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;

    if-nez v0, :cond_1

    .line 5781
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 5785
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method private getWalkingPreCaptureNum()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method private initReprocessDataFactory()V
    .locals 1

    .line 4013
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseReprocessDataFactory()V

    .line 4014
    new-instance v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    .line 4015
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->start()V

    .line 4016
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessListener:Lcom/sonyericsson/android/camera/device/zsl/DataListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->setDataListener(Lcom/sonyericsson/android/camera/device/zsl/DataListener;)V

    return-void
.end method

.method private isAutoFlashMonitoringRunning()Z
    .locals 0

    .line 6552
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAutoHdrMonitoringRunning()Z
    .locals 0

    .line 6556
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoHdrResultChecker:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAutoNightMonitoringRunning()Z
    .locals 0

    .line 6560
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoNightResultChecker:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBokehMonitoringRunning()Z
    .locals 0

    .line 6537
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDataReady(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)Z
    .locals 6

    .line 5599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 5600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->getResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    .line 5601
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double/2addr p0, v4

    cmpg-double p0, v2, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isEnabledZsl()Z
    .locals 4

    .line 1255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1256
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "set ev disable zsl"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v1

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1261
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1263
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "set ss disable zsl"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v1

    .line 1266
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->USE_ISO_VALUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->USE_ISO_VALUE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1267
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1268
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "set iso disable zsl"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return v1

    .line 1271
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isBokehOn()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1272
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "bokeh on disable zsl"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return v1

    .line 1275
    :cond_7
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "enabled zsl"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method private isFaceDetectionRunning()Z
    .locals 0

    .line 6519
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFinishBurstMonitoringRunning()Z
    .locals 0

    .line 6564
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFinishBurstResultChecker:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFusionMonitoringRunning()Z
    .locals 0

    .line 6528
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMacroDetectionSupported(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z
    .locals 4

    .line 6043
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 6044
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 6046
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK_DUAL:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-eq v0, v1, :cond_1

    .line 6049
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 6050
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    return v2

    .line 6055
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSuperNightMode()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    .line 6058
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0
.end method

.method private isSceneRecognitionRunning()Z
    .locals 0

    .line 6510
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStreadyShotEnabled(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 6831
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoStabilizerMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 6830
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method private isSuperLowLight()Z
    .locals 1

    .line 1616
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentLightCondition:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->SUPER_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToUpdateSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z
    .locals 1

    .line 7798
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 7799
    const-string p0, "RecordingProfile is initialized"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 7803
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->compare(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 7806
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "RecordingProfile is updated"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListener:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;

    if-eqz v1, :cond_0

    .line 344
    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;->onPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 p1, 0x0

    .line 345
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListener:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;

    .line 347
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onAutoFocus(Z)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;

    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;->onAutoFocus(Z)V

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;

    :cond_0
    return-void
.end method

.method private onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .locals 1

    .line 6756
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 6757
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setOtherError()V

    .line 6758
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    invoke-interface {p0, p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method private postCreateVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 2079
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "invoke E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2080
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mLock3A:Z

    if-eqz v0, :cond_2

    .line 2081
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->afLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2082
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "### waiting af lock"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$16;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$16;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const-wide/16 p0, 0x14

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2092
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private prepareStreamingImageReader(II)V
    .locals 2

    .line 5812
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 5814
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 5815
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    .line 5816
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5817
    const-string p0, "mStreamingImageReader has bean already created"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 5820
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V

    :cond_1
    const/16 v0, 0x23

    const/4 v1, 0x2

    .line 5823
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    .line 5826
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private prepareVideoImageReader(II)V
    .locals 2

    .line 5853
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 5855
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 5856
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    .line 5857
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5858
    const-string p0, "mVideoThumbnailImageReader has bean already created"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 5861
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V

    :cond_1
    const/16 v0, 0x23

    const/4 v1, 0x1

    .line 5864
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    .line 5867
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private recycleData()V
    .locals 2

    .line 4028
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### invoked"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4033
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mInCaptureDataDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    if-eqz v0, :cond_1

    .line 4034
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    goto :goto_0

    .line 4037
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslCaptureTaskDeque:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method private releaseCaptureImageReader()V
    .locals 2

    .line 5946
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5947
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 5948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 5949
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private releaseImageWriter()V
    .locals 2

    .line 4005
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4006
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 4007
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 4008
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageWriter:Landroid/media/ImageWriter;

    :cond_0
    return-void
.end method

.method private releaseMultiFramePreCaptureImageReader()V
    .locals 2

    .line 5962
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5963
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 5964
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 5965
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private releaseReprocessDataFactory()V
    .locals 2

    .line 4020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4021
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->setDataListener(Lcom/sonyericsson/android/camera/device/zsl/DataListener;)V

    .line 4022
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->stop()V

    .line 4023
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReprocessDataFactory:Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    :cond_0
    return-void
.end method

.method private releaseStreamingImageReader()V
    .locals 2

    .line 5836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5837
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 5838
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 5839
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private releaseVideoImageReader()V
    .locals 2

    .line 5932
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5933
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 5934
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 5935
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private releaseZslImageReader()V
    .locals 2

    .line 5954
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5955
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 5956
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 5957
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private resetCameraMode()V
    .locals 2

    .line 6887
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SOMC_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 6889
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6887
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private resetIsoAndShutterSpeedBySemiAuto()V
    .locals 6

    .line 7350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 7351
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "reset IsoAndShutterSpeed BySemiAuto"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7352
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->USE_ISO_VALUE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SELECT_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->ISO_EXP_PRIORITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    :cond_2
    return-void
.end method

.method private setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 9

    .line 673
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### setAeAndAwbLock: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 676
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraController;->isBurstOnGoing:Z

    const/4 p2, 0x1

    new-array v8, p2, [Z

    const/4 p2, 0x0

    aput-boolean p2, v8, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V

    return-void
.end method

.method private setCaptureOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 7317
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 7319
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so set capture orientation failed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7322
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setFlashOff()V
    .locals 3

    .line 6952
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    .line 6953
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6954
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6955
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitImmediately(Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    return-void
.end method

.method private setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V
    .locals 7

    .line 4696
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4699
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->canValidation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4702
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 4701
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4706
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_0

    .line 4709
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to valid camera parameter. : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 4707
    :cond_0
    throw v0

    .line 4714
    :cond_1
    :goto_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask-IA;)V

    if-eqz p4, :cond_2

    .line 4717
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_1

    .line 4719
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_1
    return-void
.end method

.method private setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4681
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    return-void
.end method

.method private setSelectedFaceIdTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;I)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->FACE_SELECT_FACEID:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 367
    new-array v0, p2, [Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    :cond_0
    return-void
.end method

.method private skip2FramesInHDRMultiframeCapture()V
    .locals 9

    .line 1016
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 1018
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$10;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1026
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1018
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1028
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    .line 1030
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x1

    new-array v8, v1, [Landroid/view/Surface;

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 1028
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v0

    .line 1031
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$11;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    :cond_0
    return-void
.end method

.method private startAutoExposure(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 591
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### startAutoExposure()"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$4;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method private startPreCaptureForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 9

    .line 820
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### startPreCaptureForNightPortrait() E"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;

    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait-IA;)V

    invoke-direct {v1, p0, v8}, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 823
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 824
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->createAePrecaptureTriggerRequestForNightPortrait()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 825
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private startTakeMainFrameForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 15

    move-object v6, p0

    .line 857
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "CameraController"

    const-string v1, "###  startTakeMainFrameForNightPortrait() E"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 860
    :cond_0
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;-><init>(ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    .line 863
    iget-object v9, v6, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    new-instance v10, Lcom/sonyericsson/android/camera/device/CameraController$7;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraController$7;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 878
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 863
    invoke-virtual {v9, v10, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 879
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v9

    .line 880
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SOMC_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x9

    .line 881
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 880
    invoke-virtual {v9, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 882
    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE_ON_ALWAYS_FLASH_NIGHTPORTRAIT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 883
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 882
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 886
    iget-object v10, v6, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, v6, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    .line 888
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    new-array v14, v8, [Landroid/view/Surface;

    const/4 v1, 0x0

    aput-object v0, v14, v1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x4

    .line 886
    invoke-virtual/range {v9 .. v14}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestForNightPortraitSpecialFrame(Landroid/hardware/camera2/CameraDevice;ILjava/lang/Object;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    .line 890
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraController$8;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraController$8;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/android/camera/device/CameraController;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method private startTakePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 1189
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### startTakePicture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$12;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$12;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1248
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "### startTakePicture() failed X [2]"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1249
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startTakeZslPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    .locals 9

    .line 1281
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "### startTakeZslPicture() E "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->getImage()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraController$13;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController$13;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1322
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "### startTakeZslPicture() failed X [2]"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1323
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private takeManualSSPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 9

    .line 693
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, "CameraController"

    if-eqz p3, :cond_0

    const-string p3, "### takeManualSSPicture() E"

    filled-new-array {v0, p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 695
    :cond_0
    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    invoke-direct {p3, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;)V

    .line 698
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 699
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object p2

    .line 698
    invoke-virtual {p1, p3, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 700
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p1

    .line 701
    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SS_TRIGGER_MLS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 703
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    new-array v6, v7, [Landroid/view/Surface;

    const/4 v8, 0x0

    aput-object p2, v6, v8

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object p2

    .line 706
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 708
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    new-array v3, v7, [Landroid/view/Surface;

    aput-object v2, v3, v8

    const/4 v2, 0x2

    .line 706
    invoke-virtual {p1, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    const/4 v1, 0x0

    .line 710
    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 711
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 712
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "### takeManualSSPicture() X"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private takeMultiFramePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V
    .locals 10

    .line 915
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "### multiFramePreCaptureNum: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraController$9;

    move-object v2, v9

    move-object v3, p0

    move v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/device/CameraController$9;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1010
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "### takeMultiFramePicture() failed X [2]"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1011
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateAeState(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1732
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1733
    const-string v0, "CameraController"

    if-nez p1, :cond_0

    .line 1734
    const-string p0, "get CONTROL_AE_STATE null!"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1738
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAeState:I

    .line 1739
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "current AE_STATE: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAeState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1740
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAELatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_3

    .line 1741
    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAeState:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    .line 1742
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAELatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1744
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "AE is searching, wait ae converged."

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateAfState(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 5567
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 5568
    const-string v0, "CameraController"

    if-nez p1, :cond_0

    .line 5569
    const-string p0, "get CONTROL_AF_STATE null!"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 5572
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAfState:I

    .line 5573
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "### mCurrentAfState : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAfState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateAntiBandingStatus()V
    .locals 4

    .line 3317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 3322
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, " invoked: Set anti-banding to AUTO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3323
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x3

    .line 3324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3323
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 3318
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, " invoked: Set anti-banding to OFF"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3319
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 3320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3319
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private updateAwbColorValue(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1724
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1725
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

    .line 1726
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "current AWB colorGain: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAwbColorValue:Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraController"

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateBurstAvailableState(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 1750
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getTotalIso(Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result p1

    const/16 v0, 0x640

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReachBurstAvailableMaxIso:Z

    return-void
.end method

.method private updateExtraParameter()V
    .locals 0

    .line 3312
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->updateAntiBandingStatus()V

    return-void
.end method

.method private updateLightCondition(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 5612
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getTotalIso(Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result v0

    .line 5615
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 5616
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getWledTriggerLuxIndex(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[I

    move-result-object v1

    .line 5617
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SOMC_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 5619
    aget v2, v1, v4

    goto :goto_0

    :cond_0
    aget v2, v1, v3

    .line 5620
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getEnvironmentLuxIndex(Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result p1

    if-lt p1, v2, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mShouldTriggerFlash:Z

    .line 5621
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " invoked: threshold:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5622
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 5621
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5624
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isCameraFront()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->get(IZ)Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentLightCondition:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    return-void
.end method


# virtual methods
.method public autoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 4

    .line 490
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;

    .line 491
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 492
    const-string p1, "CameraController"

    const-string p2, "autoFocus() camera device is not ready, return."

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->onAutoFocus(Z)V

    return-void

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 498
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 499
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 500
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    const-string p1, "#D# autoFocus start"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 502
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-direct {v2, p0, v1, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 503
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 508
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createAfTriggerRequest(Z)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 505
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 500
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public cancelAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 5

    .line 514
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const-string v2, "CameraController"

    if-eq v0, v1, :cond_0

    .line 515
    const-string p0, "cancelAutoFocus() camera device is not ready, return."

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 518
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "### cancelAutoFocus() E"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 523
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->createAfTriggerRequest(Z)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 525
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "### cancelAutoFocus() X"

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method changeProviderDeviceStatusToRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 6979
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6981
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6985
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6987
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 6988
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result p0

    invoke-virtual {v1, p1, v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Z)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object p0

    new-instance p1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {p1, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 6989
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6990
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_2
    return-void
.end method

.method closeCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 2627
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2628
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2629
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2630
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoFlashMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2631
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoHdrMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2632
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoNightMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2633
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFinishBurstMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2634
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->resetCameraMode()V

    const/4 v0, 0x0

    .line 2635
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 2638
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2639
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    .line 2640
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 2641
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2645
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2651
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 2652
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;

    invoke-direct {v0, p0, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask-IA;)V

    if-eqz p1, :cond_1

    .line 2654
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_0

    .line 2656
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 2641
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    const/4 v0, 0x1

    .line 6762
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 6763
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v0, :cond_0

    .line 6764
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6765
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->closeSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 6766
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6767
    const-string p0, "commit: preview trigger was fired."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 6771
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method declared-synchronized commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 11

    const-string v0, "Fail to valid camera parameter. : "

    monitor-enter p0

    .line 3212
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3214
    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "Cannot get Parameters."

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3215
    monitor-exit p0

    return-void

    .line 3218
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->needApply()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3219
    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "Parameters already applied."

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3220
    monitor-exit p0

    return-void

    .line 3223
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3226
    :try_start_3
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->canValidation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3229
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 3228
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 3233
    :try_start_4
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v5, :cond_4

    .line 3236
    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3241
    :cond_2
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_3

    .line 3242
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/device/CameraController;->isBurstOnGoing:Z

    new-array v10, v3, [Z

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3245
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->applied()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 3245
    :try_start_7
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->applied()V

    .line 3246
    throw p1

    .line 3234
    :cond_4
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createAfParametersResultChecker(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;
    .locals 3

    .line 7665
    new-instance v0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected-IA;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 7668
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    return-object v0
.end method

.method createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .locals 5

    .line 3336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->previewRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3337
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3338
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isBokehOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3339
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$msetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    goto :goto_0

    .line 3341
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$msetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3343
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3344
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "preview was requested."

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3345
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    move v2, v1

    .line 3349
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3351
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->createPreviewSessionRequestDone()V

    .line 3354
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCameraDevice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mCaptureSession:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mOutputConfiguration:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mStreamingImageReader:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mVideoThumbnailImageReader:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mPreviewSurface:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentDeviceStatus:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public finishBokehPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    return-void
.end method

.method public finishBurst(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 5

    .line 1360
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### finishBurst() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_BURST_SHOT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 1362
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 1361
    invoke-virtual {v0, v2, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    .line 1364
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 1363
    invoke-virtual {v0, v2, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1366
    new-array v2, v0, [Z

    aput-boolean v0, v2, v3

    invoke-virtual {p0, p1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    .line 1367
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->isBurstOnGoing:Z

    .line 1368
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "### finishBurst() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public finishHDRCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    const/4 v0, 0x1

    .line 1986
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 1987
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method public finishLowLightCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    const/4 v0, 0x0

    .line 1510
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setSSTriggerTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V

    const/4 v0, 0x1

    .line 1512
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 1513
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method public finishNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    const/4 v0, 0x1

    .line 908
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 909
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method public finishSlowMotionRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 2068
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "finishSlowMotionRecording"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 2071
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    return-void
.end method

.method public finishWalkingPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    const/4 v0, 0x0

    .line 1538
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setSSTriggerTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V

    const/4 v0, 0x1

    .line 1540
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 1541
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method public forceSetAsAutoFocusMode(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 10

    .line 1053
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1057
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    const/4 v0, 0x0

    new-array v9, v0, [Z

    const/4 v6, 0x0

    const-string v7, "BOKEH_SET_FOCUS_MODE"

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V

    return-void
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 3051
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
    .locals 1

    .line 6541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6542
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6543
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentCameraType()Ljava/lang/String;
    .locals 1

    .line 7756
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7757
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 7760
    const-string p0, "!"

    goto :goto_1

    .line 7772
    :cond_1
    const-string p0, "U"

    goto :goto_1

    .line 7769
    :cond_2
    const-string p0, "T"

    goto :goto_1

    .line 7766
    :cond_3
    const-string p0, "W"

    goto :goto_1

    .line 7763
    :cond_4
    const-string p0, "W_"

    :goto_1
    return-object p0
.end method

.method public getCurrentDeviceID()Ljava/lang/String;
    .locals 0

    .line 3058
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
    .locals 1

    .line 6304
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6305
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object p0

    return-object p0

    .line 6308
    :cond_0
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;-><init>()V

    return-object p0
.end method

.method getPhotoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 7223
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7224
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sony-preferred-preview-size-for-still:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7225
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 7224
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7227
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 7229
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_2

    .line 7231
    :cond_1
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 7232
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "preferredPreviewSize is invalid. Get preferredPreviewSize from captureSize: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 7238
    :cond_2
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    .line 7235
    invoke-static {p3, p0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getRecordingProfile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .locals 0

    .line 7788
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    return-object p0
.end method

.method getRecordingSurface()Landroid/view/Surface;
    .locals 0

    .line 7811
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    if-eqz p0, :cond_0

    return-object p0

    .line 7812
    :cond_0
    const-string p0, "mRecordingSurface is not created"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 7813
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method getStreamingImageRetriever()Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 2

    .line 5794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;

    if-nez v0, :cond_1

    .line 5796
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 5799
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method public getTargetDeviceID(Lcom/sonyericsson/android/camera/device/CameraParameters;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 2889
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2891
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2892
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCurrentCaptureMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2897
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isBokehOn()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2898
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2899
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2901
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BOKEH:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2904
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2906
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq p0, v2, :cond_4

    return-object v0

    .line 2909
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 2911
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "isVideo : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2912
    :cond_5
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "videoSize : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    if-nez p0, :cond_7

    return-object v0

    .line 2917
    :cond_7
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq p0, p1, :cond_8

    .line 2918
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2919
    :cond_8
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Force set camera id as  : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 2920
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " for 4K and FHD 60fps."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 2919
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2921
    :cond_9
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getTotalIso()I
    .locals 0

    .line 1634
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mTotalIso:I

    return p0
.end method

.method getVideoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7279
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7280
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preferred-preview-size-for-video:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7281
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 7280
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7283
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 7285
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_2

    .line 7287
    :cond_1
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getVideoPreviewSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 7288
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "preferredPreviewSize is invalid. Get preferredPreviewSize from videoSize: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 7294
    :cond_2
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    .line 7291
    invoke-static {p3, p0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method initLogicalCameraMode()V
    .locals 1

    const/4 v0, 0x1

    .line 6364
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    return-void
.end method

.method initializeCaptureRequest(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 2616
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->setDefault(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    return-void
.end method

.method isAfParametersReflectedToDevice(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Z
    .locals 0

    .line 7673
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7674
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->checkSync(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAfPassiveFocused()Z
    .locals 1

    .line 2106
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAfState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAfPassiveUnFocused()Z
    .locals 2

    .line 2110
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAfState:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2111
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoked, res:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public isBurstAvailable()Z
    .locals 0

    .line 1612
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReachBurstAvailableMaxIso:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCaptureAfterOpenAvailabled()Z
    .locals 0

    .line 1838
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAfterOpenAvailable:Z

    return p0
.end method

.method public isCaptureAvailabled()Z
    .locals 0

    .line 1834
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAvailable:Z

    return p0
.end method

.method public isDarkCondition()Z
    .locals 0

    .line 1595
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isNormalLight()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFinishBurstDone()Z
    .locals 0

    .line 6492
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsFinishBurstDone:Z

    return p0
.end method

.method public isFlashRequired()Z
    .locals 1

    const/4 v0, 0x0

    .line 1794
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashRequired(Z)Z

    move-result p0

    return p0
.end method

.method public isFlashRequired(Z)Z
    .locals 8

    const-string v0, "Waiting AE converged X: "

    .line 1758
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1760
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 1764
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1766
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    .line 1768
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAeState:I

    if-ne v1, v3, :cond_3

    if-eqz p1, :cond_3

    .line 1770
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAELatch:Ljava/util/concurrent/CountDownLatch;

    .line 1772
    :try_start_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "CameraController"

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    :try_start_1
    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v2

    const-string v5, "Waiting AE converged E."

    aput-object v5, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1773
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAELatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3e8

    invoke-virtual {p1, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1774
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1776
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1778
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAELatch:Ljava/util/concurrent/CountDownLatch;

    :cond_3
    return v3

    .line 1786
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isCameraFront()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1787
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mShouldTriggerFlash:Z

    return p0

    .line 1789
    :cond_5
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentAeState:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public isFlashWillFire(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .locals 3

    .line 1804
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1810
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isCameraFront()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1811
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashRequired()Z

    move-result p0

    return p0

    .line 1815
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 1819
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1820
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->shouldTriggerDisplayFlash()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public isFront(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .locals 2

    .line 1880
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 1882
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public isLaunchAndCaptureDarkCondition()Z
    .locals 1

    .line 1604
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentLightCondition:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->QUICK_LAUNCH_LOW_LIGHT:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMediaRecorderReady()Z
    .locals 0

    .line 2075
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalLight()Z
    .locals 1

    .line 1586
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentLightCondition:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraController$LightCondition;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isObjectTrackingRunning()Z
    .locals 0

    .line 6501
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWalkingCondition()Z
    .locals 0

    .line 1827
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    if-eqz p0, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->isWalkingCodition()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lock3A(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 3

    .line 2117
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mLock3A:Z

    .line 2118
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ### invoked lock : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2120
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getSlowMotion(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v0, v2, :cond_2

    .line 2121
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, " ### Slow motion don\'t support capture, return!"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 2124
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 2125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$17;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/android/camera/device/CameraController$17;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method openCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 9

    .line 2621
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask-IA;)V

    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method public prepareBokehPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    return-void
.end method

.method public prepareBurst(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 10

    .line 1330
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_BURST_SHOT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1331
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 1330
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1333
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 1332
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1335
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBurstCaptureRequestCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    .line 1336
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->isBurstOnGoing:Z

    .line 1338
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1339
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object p2

    .line 1338
    invoke-virtual {p1, v0, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1340
    new-array v9, v2, [Z

    const/4 p1, 0x0

    aput-boolean p1, v9, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p3

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V

    return-void
.end method

.method prepareCaptureImageReader(II)V
    .locals 2

    .line 5880
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 5882
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 5883
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 5884
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5885
    const-string p0, "mImageReader has bean already created"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 5888
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseCaptureImageReader()V

    :cond_1
    const/16 v0, 0x100

    const/4 v1, 0x2

    .line 5891
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 5893
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onPrepareCaptureStream(Landroid/util/Size;)V

    .line 5894
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public prepareHDRCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 1968
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 1969
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashWillFire(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1970
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HDR capture lock 3A before create session"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1971
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1973
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method public prepareLowLightCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 6

    .line 1500
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 1501
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashWillFire(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1502
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LLS lock 3A before create session"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1503
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1505
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method prepareMultiFramePreCaptureImageReader(II)V
    .locals 2

    .line 5912
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 5913
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    .line 5914
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5915
    const-string p0, "mImageReader has bean already created"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 5918
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseMultiFramePreCaptureImageReader()V

    :cond_1
    const/16 v0, 0x23

    const/4 v1, 0x2

    .line 5921
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public prepareNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    const/4 v0, 0x1

    .line 742
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 743
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method public prepareWalkingPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 1519
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 1520
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashWillFire(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1521
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Walking capture lock 3A before create session"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1522
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1524
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method

.method prepareZslImageReader(II)V
    .locals 2

    .line 5898
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 5899
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    .line 5900
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5901
    const-string p0, "mImageReader has bean already created"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 5904
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseZslImageReader()V

    :cond_1
    const/16 v0, 0x23

    const/4 v1, 0x4

    .line 5907
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2150
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method removeOnPreviewStartedListener()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 334
    :try_start_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListener:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method requestOnePreviewFrame(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V
    .locals 2

    .line 7636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v1, :cond_0

    .line 7637
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getVideoImageRetriever(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRequestOneImageRetrieverCallback:Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method requestSnapshotReadyAfterAfParametersReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Ljava/lang/Runnable;
    .locals 2

    .line 7688
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7689
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7690
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7692
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$21;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/android/camera/device/CameraController$21;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 7690
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method resetLogicalCameraMode()V
    .locals 1

    const/4 v0, 0x0

    .line 6368
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    return-void
.end method

.method public restoreFromForceAutoFocusMode(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 10

    .line 1061
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1062
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1065
    const-string p0, "Parameters not ready."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 1069
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->getApi2Value(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1070
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2

    .line 1071
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1072
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    const/4 v0, 0x0

    new-array v9, v0, [Z

    const/4 v6, 0x0

    const-string v7, "BOKEH_RESET_FOCUS_MODE"

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V

    :cond_2
    return-void
.end method

.method sendRecordingStartTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    const/4 v0, 0x1

    .line 6250
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setRecordingTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 6251
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method sendRecordingStopTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    const/4 v0, 0x0

    .line 6245
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setRecordingTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 6246
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setCameraAudioRestriction(Z)V
    .locals 0

    .line 6578
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6579
    :goto_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6584
    const-string p1, "Failed in setCameraAudioRestriction."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V
    .locals 4

    const-string v0, "CurrentDeviceState change to "

    .line 6568
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6569
    :try_start_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6571
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 6572
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setLogicalMultiCameraMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 3

    .line 7724
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    .line 7728
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 7729
    new-array v1, v0, [Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 7730
    const-string v0, "OpticalZoom"

    goto :goto_0

    :cond_0
    const-string v0, "OFF"

    :goto_0
    const-string v2, "LogicalCameraMode = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 7729
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7732
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7733
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListener:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;

    .line 326
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setRecordingTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 1

    .line 6255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6257
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6260
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_RECORDING_END_OF_STREAM:Landroid/hardware/camera2/CaptureRequest$Key;

    xor-int/lit8 p2, p2, 0x1

    .line 6262
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    .line 6260
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method setRepeatingRequestForRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 4517
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    if-nez v0, :cond_0

    return-void

    .line 4520
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask-IA;)V

    .line 4521
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method varargs setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z[Z)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 4106
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V

    return-void
.end method

.method varargs setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V
    .locals 12

    move-object v9, p0

    move/from16 v0, p4

    move-object/from16 v10, p7

    .line 4115
    iget-boolean v1, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    if-nez v1, :cond_0

    return-void

    .line 4119
    :cond_0
    iput-boolean v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mForceStopCallback:Z

    .line 4120
    iget-object v1, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 4121
    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    iget-object v2, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 4122
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 4121
    invoke-virtual {v1, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 4123
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    iget-object v4, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask-IA;)V

    goto :goto_0

    .line 4126
    :cond_1
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask-IA;)V

    .line 4129
    :goto_0
    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isZoomed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4131
    invoke-virtual {v11, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->setNeedZslBuffer(Z)V

    goto :goto_1

    .line 4133
    :cond_2
    array-length v0, v10

    if-lez v0, :cond_3

    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 4134
    aget-boolean v0, v10, v1

    invoke-virtual {v11, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->setNeedZslBuffer(Z)V

    goto :goto_1

    .line 4136
    :cond_3
    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v11, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->setNeedZslBuffer(Z)V

    .line 4140
    :goto_1
    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestTaskSet:Ljava/util/Set;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mForceStopCallback:Z

    if-nez v0, :cond_6

    .line 4141
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, " same repeating request already post, return"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void

    .line 4144
    :cond_6
    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestTaskSet:Ljava/util/Set;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_7

    .line 4146
    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_2

    .line 4148
    :cond_7
    iget-object v0, v9, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_2
    return-void
.end method

.method varargs setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 4101
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z[Z)V

    return-void
.end method

.method varargs setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V
    .locals 8

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 4111
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;ZLjava/lang/Object;Z[Z)V

    return-void
.end method

.method varargs setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    .line 4097
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z[Z)V

    return-void
.end method

.method public setSSTriggerTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V
    .locals 0

    .line 1086
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " invoked enable : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setSelectedFacePosition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;II)V
    .locals 3

    .line 6734
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6736
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6740
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    .line 6741
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;

    move-result-object p2

    .line 6742
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    filled-new-array {p3, v0, v2, p2}, [I

    move-result-object p2

    .line 6744
    sget-object p3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    .line 6745
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6744
    invoke-virtual {v1, p3, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6746
    sget-object p3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p3, p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 6748
    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V

    return-void
.end method

.method setSurface(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLandroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4049
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask-IA;)V

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_0

    .line 4052
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask-IA;)V

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_0
    return-void
.end method

.method public setVideoDisplay(Landroid/media/MediaRecorder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 2045
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### setVideoDisplay() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2046
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez p1, :cond_1

    .line 2048
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->closeSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2050
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "### setVideoDisplay() X : Null is set to MediaRecorder"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2055
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->postCreateVideoPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2057
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "### setVideoDisplay() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setZoomKeyTag(Z)V
    .locals 2

    .line 2062
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### isX2Button : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2063
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_ZOOM_BUTTON_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public shouldTriggerDisplayFlash()Z
    .locals 0

    .line 5633
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mShouldTriggerFlash:Z

    return p0
.end method

.method public startAutoExposureForS2SCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 6

    const-string v0, "AE converged : "

    .line 619
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraController"

    const-string v2, "### startAutoExposureForS2SCapture() E"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 621
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    const/4 v2, 0x1

    .line 623
    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoExposure(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 624
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 626
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa0

    invoke-virtual {p1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    .line 627
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "CameraController"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 629
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 633
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 634
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 635
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 637
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAeDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 638
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "CameraController"

    const-string p1, "### startAutoExposureForS2SCapture() X"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 635
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method startAutoFlashMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 6376
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startAutoFlashMonitoring"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6377
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoFlashMonitoringRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6378
    new-instance v0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoFlashChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    .line 6381
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6382
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6383
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "add auto flash status checker."

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6384
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6386
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->resetLastFlashRequired()V

    return-void
.end method

.method public startAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;ZZZLandroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 2

    .line 536
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;

    .line 537
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p1

    sget-object p3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq p1, p3, :cond_0

    .line 538
    const-string p1, "CameraController"

    const-string/jumbo p2, "startAutoFocus() camera device is not ready, return."

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 539
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraController$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 547
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "CameraController"

    const-string p3, "### startAutoFocus() E"

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 549
    :cond_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "CameraController"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startAutoFocus: focusLock: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 550
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "CameraController"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startAutoFocus: aeLock: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 553
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-direct {p3, p0, p2, p6, p7}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 555
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$2;

    invoke-direct {p2, p0, p6}, Lcom/sonyericsson/android/camera/device/CameraController$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 556
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 576
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_5

    .line 577
    invoke-direct {p0, p6, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setAeAndAwbLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 579
    :cond_5
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraController$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "CameraController"

    const-string p1, "### startAutoFocus() X"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method startAutoHdrMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    .line 6408
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string/jumbo p2, "startAutoHdrMonitoring"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6409
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoHdrMonitoringRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6410
    new-instance p2, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoHdrChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoHdrResultChangedCallback;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoHdrResultChecker:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    .line 6413
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6414
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoHdrResultChecker:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6415
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string p2, "add auto hdr status checker."

    const/4 v0, 0x0

    aput-object p2, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6416
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method startAutoNightMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    .line 6439
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string/jumbo p2, "startAutoNightMonitoring"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6440
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoNightMonitoringRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6441
    new-instance p2, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoNightChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoNightResultChangedCallback;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoNightResultChecker:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    .line 6444
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6445
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoNightResultChecker:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6446
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string p2, "add auto night status checker."

    const/4 v0, 0x0

    aput-object p2, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6447
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method startBokehMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 6318
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isBokehMonitoringRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6322
    new-instance v0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnBokehConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/BokehResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    .line 6325
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6326
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 6327
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "add bokeh status checker."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6328
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6330
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6332
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6335
    :cond_1
    new-instance p2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;

    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;)V

    .line 6336
    invoke-virtual {p2, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6338
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 6328
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 6319
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bokeh monitoring has already been started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method startFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V
    .locals 3

    .line 5974
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5976
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5980
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5981
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Face detection is already running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 5986
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5987
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->setCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 5988
    new-instance v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    invoke-direct {v1, p2, v2}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 5991
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5992
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5993
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5995
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 5996
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 5997
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5996
    invoke-virtual {p2, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 5998
    new-array v1, p2, [Z

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    .line 6001
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    .line 6002
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance p1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {p1, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    .line 6005
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6006
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5993
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method startFinishBurstMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 6466
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "invoked"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6467
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFinishBurstMonitoringRunning()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 6468
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsFinishBurstDone:Z

    .line 6469
    new-instance v0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFinishBurstResultCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFinishBurstResultChecker:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    .line 6472
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6473
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFinishBurstResultChecker:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6474
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "add finish burst result checker."

    aput-object v0, p0, p2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6475
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method startFusionMonitoring(Landroid/os/Handler;)V
    .locals 2

    .line 6272
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6276
    new-instance v0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    .line 6279
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6280
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 6281
    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "add fusion status checker."

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6282
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6273
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fusion monitoring has already been started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method startObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V
    .locals 5

    .line 6160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6162
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6166
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isObjectTrackingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6168
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "Object tracking is already running."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6169
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6170
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 6172
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6171
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 6175
    :cond_3
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-direct {v1, p2, p4}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 6178
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 6179
    :try_start_2
    iget-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6180
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6182
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p2

    .line 6183
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    .line 6184
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    .line 6183
    invoke-direct {p0, v0, p4, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;

    move-result-object p3

    .line 6185
    sget-object p4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 6187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6185
    invoke-virtual {p2, p4, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6188
    sget-object p4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v2, v3, v4, p3}, [I

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6195
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    .line 6198
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setObjectTrackingTarget(Z)V

    .line 6201
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    .line 6202
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6203
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 6180
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method startSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V
    .locals 4

    .line 6064
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6066
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6070
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6071
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Scene recognition is already running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 6076
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6077
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6078
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Camera is closing or closed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void

    .line 6082
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6083
    new-instance v1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    .line 6086
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isMacroDetectionSupported(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result v3

    invoke-direct {v1, p2, v2, v3}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;Z)V

    .line 6088
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 6089
    :try_start_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 6090
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6091
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6093
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 6095
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 6096
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6095
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6097
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 6099
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6097
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6101
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 6103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6101
    invoke-virtual {p2, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 6105
    new-array v1, p2, [Z

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    .line 6108
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    .line 6109
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6110
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6091
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_0
    return-void
.end method

.method stopAutoFlashMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 6393
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "stopAutoFlashMonitoring"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6394
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoFlashMonitoringRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6395
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6396
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6397
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "remove auto flash status checker."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6398
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6399
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6398
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public stopAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 643
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### stopAutoFocus()"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;

    .line 647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$5;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$5;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method stopAutoHdrMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 6424
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "stopAutoHdrMonitoring"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6425
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoHdrMonitoringRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6426
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6427
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoHdrResultChecker:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6428
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "remove auto hdr status checker."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6429
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6430
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoHdrResultChecker:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6429
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method stopAutoNightMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 6455
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "stopAutoNightMonitoring"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6456
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoNightMonitoringRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6457
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6458
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoNightResultChecker:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6459
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "remove auto night status checker."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6460
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6461
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoNightResultChecker:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6460
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method stopBokehMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 4

    .line 6345
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isBokehMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6346
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6347
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 6348
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "remove bokeh status checker."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6350
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6349
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 6352
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6354
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 6357
    :cond_2
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;

    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;)V

    .line 6358
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6360
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void
.end method

.method stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 6014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6016
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6019
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6020
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Face detection is not running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 6025
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6026
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6027
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6028
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 6030
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 6031
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 6032
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6031
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6035
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    .line 6036
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance p1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {p1, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    .line 6038
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6039
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 6027
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method stopFinishBurstMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 4

    .line 6480
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "invoked"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6481
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFinishBurstMonitoringRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6482
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6483
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFinishBurstResultChecker:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6484
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "remove finish burst result checker."

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6485
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6486
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFinishBurstResultChecker:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    .line 6487
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsFinishBurstDone:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6485
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method stopFusionMonitoring()V
    .locals 4

    .line 6289
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6290
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6291
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 6292
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "remove fusion status checker."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6294
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6293
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 4

    .line 6211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6213
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6219
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6220
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Object tracking is not running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 6225
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6226
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 6228
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 6230
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    .line 6231
    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 6233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6231
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 6234
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V

    .line 6236
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setObjectTrackingTarget(Z)V

    .line 6239
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    .line 6240
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6241
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 6227
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method stopPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 2661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method stopPreviewTaskSynchronized(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 2665
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    const/4 v0, 0x0

    .line 2666
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 4

    .line 6118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6120
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6123
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6124
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Scene recognition is not running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 6129
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6130
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 6131
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 6132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 6136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6135
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 6139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6137
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 6143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6141
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6146
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6147
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    .line 6148
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 6149
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 6132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public takeBurstPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 6

    .line 1346
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string p2, "CameraController"

    if-eqz p1, :cond_0

    const-string p1, "### takeBurstPicture() E"

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 1350
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    const/4 v2, 0x2

    new-array v5, v2, [Landroid/view/Surface;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    const/4 p1, 0x1

    aput-object p3, v5, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1348
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object p1

    .line 1352
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBurstCaptureRequestCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureRequestCallback;

    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 1354
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->onCaptureRequested()V

    .line 1355
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "### takeBurstPicture() X"

    filled-new-array {p2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public takeHDRPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 7

    .line 1979
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HDR multi frame num: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getHDRPreCaptureNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1980
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getHDRPreCaptureNum()I

    move-result v5

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->HDR:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController;->takeMultiFramePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    return-void
.end method

.method public takeLowLightPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 8

    .line 733
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### takeLowLightPicture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 734
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getLowLightPreCaptureNum()I

    move-result v6

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->LLS:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController;->takeMultiFramePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    .line 736
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "### takeLowLightPicture() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public takeNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 751
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### takeNightPortraitPicture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 753
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$6;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$6;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 810
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "### takeNightPortraitPicture() failed X [2]"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 811
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "### takeNightPortraitPicture() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public takePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 6

    .line 682
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### takePicture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSemiAutoStatus:Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fca055

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 684
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->takeManualSSPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 686
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->startTakePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 688
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "### takePicture() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public takeQuickPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 8

    .line 724
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### takeQuickPicture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getQuickCaptureNum()I

    move-result v6

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->QUICK_CAPTURE:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController;->takeMultiFramePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    .line 727
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "### takeQuickPicture() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public takeWalkingPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 8

    .line 1530
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### takeWalkingPicture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1531
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getWalkingPreCaptureNum()I

    move-result v6

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->WALKING:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController;->takeMultiFramePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    .line 1533
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "### takeWalkingPicture() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public takeZslPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 717
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### takeZslPicture() E"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mZslCaptureTaskDeque:Ljava/util/Deque;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 719
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "### takeZslPicture() X"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 1

    .line 6823
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    return-void
.end method

.method triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 6

    .line 6786
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "triggerRestartPreview() isForcibly\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6787
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 6793
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 6794
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->forceRequestCreatePreviewSession()V

    .line 6797
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->previewRequestLock:Ljava/lang/Object;

    monitor-enter p2

    .line 6798
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 6799
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_3

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "add create session request."

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6800
    :cond_3
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {v2, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest-IA;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 6803
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6804
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedVideo(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 6806
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedVideo(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 6808
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 6809
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isLogicCameraOperationMode()Z

    move-result v1

    .line 6808
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedLogicCameraOperationMode(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 6811
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedVideoHdr(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 6812
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 6814
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-eq v1, v2, :cond_7

    .line 6815
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getQrCodeDetection()Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    if-ne v1, v2, :cond_8

    :cond_7
    move v3, v4

    .line 6813
    :cond_8
    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedCapturedFrame(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 6816
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isStreadyShotEnabled(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$mneedSteadyShot(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 6818
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$msetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 6819
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unselectedFaceID(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    return-void
.end method

.method updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V
    .locals 1

    .line 7792
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->needToUpdateSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7793
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    :cond_0
    return-void
.end method
