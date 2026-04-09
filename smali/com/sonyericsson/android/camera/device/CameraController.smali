.class Lcom/sonyericsson/android/camera/device/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;,
        Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;,
        Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;,
        Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;,
        Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;
    }
.end annotation


# static fields
.field private static final CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

.field private mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

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

.field private mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field private final mCurrentDeviceStatusLock:Ljava/lang/Object;

.field private mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

.field private mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

.field private mIsCameraParametersReady:Z

.field private mIsNeedCheckCropRegion:Z

.field private mLastCropRegion:Landroid/graphics/Rect;

.field private mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

.field private final mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

.field private final mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

.field private final mOnPreviewStartedListenerLock:Ljava/lang/Object;

.field private final mOnPreviewStartedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;",
            ">;"
        }
    .end annotation
.end field

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

.field private mReceivedResultCount:I

.field private final mRequestOneImageRetrieverCallback:Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

.field private mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

.field private mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

.field private mStreamingImageReader:Landroid/media/ImageReader;

.field private mVideoThumbnailImageReader:Landroid/media/ImageReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    sget-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->DIFF:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 4

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 130
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 132
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 133
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 134
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    .line 137
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    .line 138
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 147
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 149
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    .line 150
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mLastCropRegion:Landroid/graphics/Rect;

    .line 152
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsNeedCheckCropRegion:Z

    .line 155
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 156
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 158
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 159
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    .line 165
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 169
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 176
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;

    .line 358
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    .line 361
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "StatusCallback"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 363
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 364
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    const-string v1, "CameraCaptureSessionCallback"

    .line 365
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 369
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    .line 370
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    .line 371
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    .line 373
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRequestOneImageRetrieverCallback:Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

    .line 375
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    .line 376
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    .line 378
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    .line 379
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    .line 380
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    .line 382
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    .line 383
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    const-string p2, "camera"

    .line 386
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 387
    new-instance p1, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 388
    new-instance p1, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/ImageRetriever;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/device/CameraController;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareVideoImageReader(II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/device/CameraController;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareStreamingImageReader(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsNeedCheckCropRegion:Z

    return p0
.end method

.method static synthetic access$4602(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsNeedCheckCropRegion:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    return p0
.end method

.method static synthetic access$4702(Lcom/sonyericsson/android/camera/device/CameraController;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    return p1
.end method

.method static synthetic access$4708(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .locals 2

    .line 99
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I

    return v0
.end method

.method static synthetic access$4800()Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    .locals 1

    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mLastCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5802(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mLastCropRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result p0

    return p0
.end method

.method private applyAmberBlueColor(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 4

    .line 2824
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2825
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2827
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2826
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2828
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2830
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2828
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyDistortionCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 3119
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getDistortionCorrection()Ljava/lang/String;

    move-result-object p1

    .line 3118
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$DistortionCorrection;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3121
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyEv(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 2899
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2900
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getExposureCompensation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2899
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 2904
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2906
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getExposureTimeLimit()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 2904
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 5

    .line 2835
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FlashMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    .line 2836
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAeMode()Ljava/lang/String;

    move-result-object v1

    .line 2837
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    .line 2836
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AeMode;->getApi2Value(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2839
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 2840
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2839
    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2841
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2842
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2841
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2843
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2843
    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2845
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 14

    .line 2912
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2916
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusArea()Ljava/lang/String;

    move-result-object v1

    .line 2915
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->getApi2Value(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2919
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusRectangles()Ljava/util/List;

    move-result-object v2

    .line 2920
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2921
    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2922
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setFocusRectangles() : rectangles = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_0
    move v5, v6

    :goto_0
    if-ge v5, v3, :cond_4

    .line 2925
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 2926
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v9, :cond_1

    new-array v9, v7, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setFocusRectangles() : area.rect = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 2928
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2929
    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2930
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v8, v4, v5

    goto :goto_1

    .line 2933
    :cond_2
    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v9, Landroid/graphics/Rect;

    .line 2935
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 2936
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 2937
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    add-int/2addr v12, v7

    .line 2938
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    add-int/2addr v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v8, v9, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v8, v4, v5

    .line 2943
    :goto_1
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_3

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusRectangles() : rectangle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v5

    .line 2944
    invoke-virtual {v10}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 2943
    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2947
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2948
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2949
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusRange()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2950
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2952
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFpsRange(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 3073
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3074
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFpsRange()Landroid/util/Range;

    move-result-object p1

    .line 3073
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFusionMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 3109
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFusionMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FusionMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3111
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_FUSION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 2956
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2960
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getStillHdr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillHdr;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2962
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2964
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    .line 2966
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2964
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private applyIso(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 2972
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2975
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;

    move-result-object v0

    .line 2977
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFusionIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;

    move-result-object p1

    .line 2978
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2980
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SENSOR_SENSITIVITY_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2981
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyMeteringArea(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 7

    .line 2987
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v0

    .line 2986
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2990
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMeteringArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 2991
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    .line 2994
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMeteringArea() : aeRegion = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2994
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 2997
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2998
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2997
    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2999
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v5, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v5, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3001
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3003
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v0, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object v2, v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 3006
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/graphics/Rect;

    .line 3008
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v2, v1, v4

    .line 3006
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 900
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 901
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Parameters not ready."

    .line 908
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v0

    .line 912
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 913
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIso(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 914
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 915
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 916
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 917
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyEv(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 918
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyWhiteBalance(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 919
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyAmberBlueColor(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 920
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySoftSkin(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 921
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 922
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyMeteringArea(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 923
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFpsRange(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 924
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFusionMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 925
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDistortionCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 927
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyPowerSaveMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 929
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 930
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 932
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->needCreatePreviewSession()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private applyPowerSaveMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 2881
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPowerMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2882
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_POWER_SAVE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2885
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2887
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2888
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2889
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2890
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2891
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 2892
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2891
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

    .line 3087
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3088
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getGpsData()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 4

    .line 3092
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 3095
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 3096
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v0

    goto :goto_0

    .line 3098
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    .line 3097
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 3099
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v0

    .line 3102
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SENSOR_EXPOSURE_TIME_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3103
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3102
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private applySoftSkin(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 1

    .line 3040
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3042
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSoftSkin()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3040
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyWhiteBalance(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 3

    .line 3078
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 3079
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3078
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3080
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result v0

    if-nez v0, :cond_0

    .line 3081
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3082
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->getApi2Value(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3081
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 8

    .line 2849
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2850
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 2851
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2852
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2853
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    new-array v3, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyZoom() : ActiveArraySize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 2856
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p1, v3

    div-float v0, v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    .line 2857
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    mul-float/2addr v0, v1

    float-to-double v6, p1

    .line 2858
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p1, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 2859
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-array p1, v5, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyZoom() : CropSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 2860
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private closeSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CloseSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method private createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 6

    .line 965
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    .line 966
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 993
    :cond_0
    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create preview session due to status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_5

    .line 970
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 971
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 973
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 974
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 976
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v4, v5, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3200(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 977
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 982
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 983
    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reject create preview session request due to same request: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v3

    .line 988
    :cond_6
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 989
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return v3
.end method

.method private get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;
    .locals 2

    .line 3148
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    add-int/lit8 p1, p2, 0x1

    add-int/lit8 v0, p3, 0x1

    .line 3149
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3150
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 3151
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3152
    new-instance p0, Landroid/graphics/Rect;

    add-int/lit8 p1, p2, -0x1

    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 3154
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    .line 3155
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    .line 3156
    new-instance p2, Landroid/graphics/Rect;

    add-int/lit8 p3, p1, 0x1

    add-int/lit8 v0, p0, 0x1

    invoke-direct {p2, p1, p0, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private getVideoImageRetriever(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 3

    .line 2226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    if-nez v0, :cond_0

    .line 2227
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 2231
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method private isFaceDetectionRunning()Z
    .locals 0

    .line 2668
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

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

    .line 2677
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSceneRecognitionRunning()Z
    .locals 0

    .line 2659
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;

    .line 203
    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;->onPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .locals 1

    .line 2767
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 2768
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setOtherError()V

    .line 2769
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    invoke-interface {p0, p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method private prepareStreamingImageReader(II)V
    .locals 2

    .line 2257
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 2260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    .line 2261
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string p0, "mStreamingImageReader has bean already created"

    .line 2262
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 2265
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V

    :cond_1
    const/16 v0, 0x23

    const/4 v1, 0x2

    .line 2268
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    .line 2271
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private prepareVideoImageReader(II)V
    .locals 2

    .line 2298
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 2301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    .line 2302
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string p0, "mVideoThumbnailImageReader has bean already created"

    .line 2303
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 2306
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoImageReader()V

    :cond_1
    const/16 v0, 0x23

    const/4 v1, 0x1

    .line 2309
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    .line 2312
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private releaseStreamingImageReader()V
    .locals 2

    .line 2281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 2284
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private releaseVideoImageReader()V
    .locals 2

    .line 2322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 2325
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V
    .locals 9

    .line 1537
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 1539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1540
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1539
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1544
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1545
    throw v0

    :cond_0
    const/4 v1, 0x1

    .line 1547
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to valid camera parameter. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1551
    :cond_1
    :goto_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    if-eqz p4, :cond_2

    .line 1554
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_1

    .line 1556
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_1
    return-void
.end method

.method private setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1522
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method changeProviderDeviceStatusToRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 2865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2867
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2871
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2873
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 2874
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

    .line 2875
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2876
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_2
    return-void
.end method

.method closeCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 408
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 409
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 410
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    .line 416
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 417
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 428
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;

    invoke-direct {v0, p0, p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    if-eqz p1, :cond_1

    .line 430
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 417
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    const/4 v0, 0x1

    .line 2773
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 2774
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v0, :cond_0

    .line 2775
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2776
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->closeSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2777
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "commit: preview trigger was fired."

    .line 2778
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 2782
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method declared-synchronized commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 6

    monitor-enter p0

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Cannot get Parameters."

    .line 857
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 858
    monitor-exit p0

    return-void

    .line 861
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->needApply()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Parameters already applied."

    .line 862
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 863
    monitor-exit p0

    return-void

    .line 866
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    .line 869
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_3

    .line 871
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 872
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 871
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 876
    :try_start_4
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 877
    throw v2

    :cond_2
    const/4 v3, 0x1

    .line 879
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to valid camera parameter. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 884
    :cond_3
    :goto_0
    :try_start_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_4

    .line 885
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 888
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->applied()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 890
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 888
    :try_start_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->applied()V

    .line 889
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 854
    monitor-exit p0

    throw p1
.end method

.method createAfParametersResultChecker(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;
    .locals 3

    .line 3162
    new-instance v0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 3165
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    return-object v0
.end method

.method createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "preview was requested."

    .line 944
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 945
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 946
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->createPreviewSessionRequestDone()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaptureSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOutputConfiguration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStreamingImageReader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoThumbnailImageReader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreviewSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDeviceStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
    .locals 1

    .line 2681
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2682
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
    .locals 1

    .line 2636
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object p0

    return-object p0

    .line 2640
    :cond_0
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;-><init>()V

    return-object p0
.end method

.method getPhotoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 3021
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3022
    new-array p0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sony-preferred-preview-size-for-still:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    .line 3022
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3025
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 3027
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_2

    .line 3029
    :cond_1
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 3030
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferredPreviewSize is invalid. Get preferredPreviewSize from captureSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 3036
    :cond_2
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    .line 3033
    invoke-static {p3, p0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getStreamingImageRetriever()Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 2

    .line 2240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    if-nez v0, :cond_0

    .line 2241
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 2244
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method getVideoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 3054
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3055
    new-array p0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred-preview-size-for-video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    .line 3055
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3058
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 3060
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_2

    .line 3062
    :cond_1
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 3063
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferredPreviewSize is invalid. Get preferredPreviewSize from videoSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 3069
    :cond_2
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    .line 3066
    invoke-static {p3, p0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method initializeCaptureRequest(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->setDefault(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    return-void
.end method

.method isAfParametersReflectedToDevice(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Z
    .locals 0

    .line 3170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3171
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->checkSync(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isObjectTrackingRunning()Z
    .locals 0

    .line 2650
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method openCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 3

    .line 401
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method removeOnPreviewStartedListener()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 194
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

    .line 3133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq v0, v1, :cond_0

    .line 3134
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getVideoImageRetriever(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRequestOneImageRetrieverCallback:Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method requestSnapshotReadyAfterAfParametersReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Ljava/lang/Runnable;
    .locals 2

    .line 3185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3186
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3189
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/android/camera/device/CameraController$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 3187
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V
    .locals 5

    .line 2687
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2688
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentDeviceState change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2690
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 2691
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 4

    .line 1287
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    if-nez v0, :cond_0

    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1294
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1293
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1295
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    goto :goto_0

    .line 1297
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 1300
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_1

    .line 1302
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_1
    return-void
.end method

.method setSelectedFacePosition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;II)V
    .locals 5

    .line 2745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2747
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2751
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    .line 2752
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;

    move-result-object p2

    const/4 p3, 0x4

    .line 2753
    new-array p3, p3, [I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    aput v0, p3, v2

    iget v0, p2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aput v0, p3, v3

    const/4 v0, 0x2

    iget v4, p2, Landroid/graphics/Rect;->right:I

    aput v4, p3, v0

    const/4 v0, 0x3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    aput p2, p3, v0

    .line 2755
    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2756
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2755
    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2757
    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2759
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V

    return-void
.end method

.method setSurface(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLandroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1244
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_0

    .line 1247
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_0
    return-void
.end method

.method startFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V
    .locals 4

    .line 2334
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2336
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2340
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2341
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Face detection is already running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 2346
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2347
    new-instance v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    invoke-direct {v1, p2, v2}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 2350
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2351
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2352
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 2355
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 2356
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2355
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2357
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2359
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2357
    invoke-virtual {p2, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 2360
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 2363
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    .line 2364
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance p1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {p1, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    .line 2367
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2368
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2352
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method startFusionMonitoring(Landroid/os/Handler;)V
    .locals 2

    .line 2604
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2605
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fusion monitoring has already been started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2608
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    .line 2611
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2612
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "add fusion status checker."

    .line 2613
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2614
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method startObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V
    .locals 6

    .line 2514
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2516
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2520
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isObjectTrackingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2521
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2522
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "Object tracking is already running."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2523
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2524
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2525
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 2526
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2525
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2529
    :cond_3
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-direct {v1, p2, p4}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 2532
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2533
    :try_start_2
    iget-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2534
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2536
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p2

    .line 2537
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    .line 2538
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    .line 2537
    invoke-direct {p0, v0, p4, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;

    move-result-object p3

    .line 2539
    sget-object p4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 2541
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2539
    invoke-virtual {p2, p4, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2542
    sget-object p4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    new-array v2, v2, [I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p3, Landroid/graphics/Rect;->top:I

    aput v3, v2, v1

    const/4 v3, 0x2

    iget v5, p3, Landroid/graphics/Rect;->right:I

    aput v5, v2, v3

    const/4 v3, 0x3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    aput p3, v2, v3

    invoke-virtual {p2, p4, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2549
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    .line 2552
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setObjectTrackingTarget(Z)V

    .line 2555
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    .line 2556
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2557
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 2534
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

    .line 2411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2413
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2417
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2418
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Scene recognition is already running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 2423
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2424
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2425
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Camera is closing or closed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void

    .line 2429
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2430
    new-instance v1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    .line 2433
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 2435
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2436
    :try_start_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 2437
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2438
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 2442
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 2443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2442
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2444
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2446
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2444
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2447
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 2448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2447
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2450
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2452
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2450
    invoke-virtual {p2, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 2454
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 2457
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    .line 2458
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2459
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2438
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_0
    return-void
.end method

.method stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 4

    .line 2376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2378
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2381
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2382
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Face detection is not running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 2387
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2388
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 2390
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 2392
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 2393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 2394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2393
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2395
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2397
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2395
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2400
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    .line 2401
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    new-instance p1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {p1, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    .line 2403
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2404
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 2389
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method stopFusionMonitoring()V
    .locals 3

    .line 2621
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2623
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "remove fusion status checker."

    .line 2624
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 2626
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2625
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

    .line 2565
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2567
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2573
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2574
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Object tracking is not running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 2579
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2580
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2581
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 2582
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 2584
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    .line 2585
    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 2587
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2585
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 2588
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V

    .line 2590
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setObjectTrackingTarget(Z)V

    .line 2593
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    .line 2594
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2595
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 2581
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method stopPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method stopPreviewTaskSynchronized(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 5

    .line 2467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2469
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2472
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2473
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Scene recognition is not running."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 2478
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2479
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 2480
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 2481
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getStillHdr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillHdr;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2487
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 2488
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2487
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2489
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 2491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2489
    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2492
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2497
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2495
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2500
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2501
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    .line 2502
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2503
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 2481
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 4

    const-string v0, "triggerRestartPreview()"

    .line 2796
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2804
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 2805
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->forceRequestCreatePreviewSession()V

    .line 2808
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-nez p2, :cond_2

    .line 2809
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p2, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 2812
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2813
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 2815
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 2818
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3200(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 2819
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 2820
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-ne p1, p2, :cond_5

    move v2, v3

    :cond_5
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    return-void
.end method
