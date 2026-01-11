.class public Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
    }
.end annotation


# static fields
.field private static final AF_DONE_DELAY_TIME_MS:J = 0x32L

.field public static final AVAILABLE_MEMORY_300M:J = 0x12c00000L

.field public static final AVAILABLE_MEMORY_700M:J = 0x2bc00000L

.field public static final BG_PROCESSING_COUNT_LOW:I = 0x3

.field public static final BG_PROCESSING_COUNT_MAX:I = 0x5

.field public static final BG_PROCESSING_COUNT_MIN:I = 0x1

.field static final CLOSE_BYPASS_CAMERA_TIMEOUT_MILLIS:J = 0x186a0L

.field private static final DELAY_STATUS_PROVIDER_UPDATE_UNTIL_RECORDING_STARTED_MILLIS:J = 0xbb8L

.field private static final SWITCH_CAMER_OFFSITE:F = -4.0E-4f

.field private static final TAG:Ljava/lang/String; = "CameraDeviceHandler"

.field private static final TIMEOUT_WAIT_FOR_PARAMETERS_TO_BE_REFLECTED_MILLIS:J = 0x1388L

.field public static final USE_CAMERA2:Z = true

.field private static final VALUE_CAPTURING_TIME_1:I = 0x3e8

.field private static final VALUE_CAPTURING_TIME_2:I = 0xbb8

.field private static final VALUE_CAPTURING_TIME_3:I = 0x1388

.field private static final VALUE_CAPTURING_TIME_4:I = 0x1770

.field private static final VALUE_CAPTURING_TIME_5:I = 0x1b58

.field private static final VALUE_CAPTURING_TIME_6:I = 0x1f40

.field private static final VALUE_ISO_400:I = 0x190

.field private static final VALUE_ISO_800:I = 0x320

.field private static final sCameraSessionInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;


# instance fields
.field isAutoFocus:Z

.field private mActivityIsInForeground:Z

.field private mApplicationContext:Landroid/content/Context;

.field private final mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

.field private mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

.field private mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

.field private final mCameraDeviceThreadHandler:Landroid/os/Handler;

.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mCaptureDuration:I

.field private mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

.field private final mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

.field private mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

.field private mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field private mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

.field private mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private final mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

.field private mIsAutoFlashRequired:Z

.field private mIsAutoNightDetected:Z

.field private mIsCameraDisabled:Z

.field private mIsFpsLimitationEnabled:Z

.field private mIsInShutdownNow:Z

.field private mIsRecording:Ljava/lang/Boolean;

.field private mIsVideo:Z

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field private mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

.field private mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;

.field private mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

.field private mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;

.field private mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

.field private mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

.field private mSavingPhotoRequestQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mSavingPhotoRequestQueueBackup:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

.field private mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mTimeOnSnapshotReadyDone:J

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

.field private final mVideoRecorderLock:Ljava/lang/Object;

.field private mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

.field private final mVirtualTakePictureListener:Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;

.field private mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityIsInForeground(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBypassCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/BypassCameraController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDeviceThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFastCaptureOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFastCaptureSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeotagManager(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreProcessState(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterFeedback(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachineForSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoRecorderLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualTakePictureListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualTakePictureListener:Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitUntilVideoStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBypassCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureDuration(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureStartPoint(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCondition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFastCaptureOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGeotagManager(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoFlashRequired(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoFlashRequired:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoNightDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoNightDetected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnPreAutoFocusCallback(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeOnSnapshotReadyDone(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTimeOnSnapshotReadyDone:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVirtualCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitUntilVideoStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeProviderDeviceStatusToRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changeProviderDeviceStatusToRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearBGProcessingCount(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->clearBGProcessingCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecrementBGProcessingCount(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->decrementBGProcessingCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdequeueSavingPhotoRequestAndAttachImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;[B)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->dequeueSavingPhotoRequestAndAttachImageReader([B)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdequeueSavingPhotoRequestBackup(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->dequeueSavingPhotoRequestBackup()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->dumpStatus(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideDisplayFlashScreen(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->hideDisplayFlashScreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misNeedCreatePreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isNeedCreatePreviewSession()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRecorderAvailable(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mneedsForceSetAsAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->needsForceSetAsAutoFocus()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyRecordingStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->notifyRecordingStopCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpeekLastSavingPhotoRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->peekLastSavingPhotoRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mplayCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayShutterSoundIfNeed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playShutterSoundIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseRecorderOnCameraClosed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnCameraClosed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldPlayShutterSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsCameraSessionInfoMap()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sCameraSessionInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;

    .line 685
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sCameraSessionInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 173
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 178
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    .line 190
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    .line 193
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 194
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    .line 197
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v1, 0x0

    .line 200
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    .line 203
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoFlashRequired:Z

    .line 206
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoNightDetected:Z

    .line 221
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 227
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    .line 228
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;

    .line 229
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;

    .line 230
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    .line 231
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    .line 272
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 288
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 303
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    const/4 v2, 0x1

    .line 312
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    .line 314
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    .line 333
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->INVALID:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    .line 338
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 461
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 723
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 730
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualTakePictureListener:Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;

    .line 1393
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    .line 3327
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$11;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    .line 5854
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 799
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    .line 802
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "CameraAccess"

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 804
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 805
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    .line 807
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    .line 809
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    .line 810
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 811
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask-IA;)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 814
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;

    .line 815
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    .line 816
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    .line 818
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 819
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    return-void
.end method

.method private cancelChangeProviderDeviceStatusToRecording()V
    .locals 1

    .line 3349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelCloseBypassCameraTimeoutTask()V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1441
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    return-void
.end method

.method private changeFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .locals 2

    .line 3038
    const-string p0, "CameraDeviceHandler"

    if-nez p1, :cond_0

    .line 3039
    const-string p1, "changeFocusMode: params is null."

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 3043
    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3044
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 3045
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 3046
    const-string p1, "changeFocusMode to auto."

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 3050
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 3051
    const-string p1, "changeFocusMode, no change."

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .locals 2

    .line 274
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked current:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-void
.end method

.method private changeProviderDeviceStatusToRecording()V
    .locals 3

    .line 3341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearBGProcessingCount()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 770
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBGProcessingCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 771
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    :cond_1
    return-void
.end method

.method private createCameraActionSound()V
    .locals 2

    .line 1456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createPreCaptureSavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 16

    move-object/from16 v0, p0

    .line 2466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2471
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    if-eqz v3, :cond_0

    .line 2472
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->-$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2478
    :goto_0
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_1

    .line 2479
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v4, v0

    .line 2483
    new-instance v14, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    new-instance v15, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 2488
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2489
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v7, "image/jpeg"

    const-string v8, ".JPG"

    const/4 v10, 0x0

    const-string v11, ""

    move-object v0, v15

    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    const/4 v1, 0x1

    invoke-direct {v14, v15, v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V

    return-object v14
.end method

.method private decrementBGProcessingCount()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 764
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBGProcessingCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dequeueSavingPhotoRequestAndAttachImageReader([B)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 1

    .line 2756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 2757
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz p0, :cond_0

    .line 2759
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 2761
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2762
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dequeueSavingPhotoRequestBackup()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 6

    const-string v0, "dequeueSavingPhotoRequestBackup() capturing:"

    .line 2778
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    monitor-enter v1

    .line 2779
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v3, 0x2

    .line 2781
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "CameraDeviceHandler"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    .line 2782
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    .line 2781
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2784
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 2785
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpStatus(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mStateMachine:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mPreProcessState:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mActivityIsInForeground:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mIsCameraDisabled:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->dump(Ljava/lang/StringBuilder;)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->dump(Ljava/lang/StringBuilder;)V

    .line 244
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dump(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 7

    const-string v0, "enqueueSavingPhotoRequestBackup() capturing:"

    const-string v1, "enqueueSavingPhotoRequest() capturing:"

    .line 2740
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v2

    .line 2741
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v3, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 2743
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "CameraDeviceHandler"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 2744
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 2743
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2745
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2747
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    monitor-enter v1

    .line 2748
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    invoke-interface {v2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 2750
    new-array p1, v3, [Ljava/lang/String;

    const-string v2, "CameraDeviceHandler"

    aput-object v2, p1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    .line 2751
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v5

    .line 2750
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2752
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2745
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private getNightModeRemainingCaptureDuration()I
    .locals 2

    .line 2610
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getTotalIso()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v1, 0x320

    if-le v0, v1, :cond_2

    .line 2615
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->STABLE:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    if-ne p0, v0, :cond_1

    const/16 p0, 0x1f40

    goto :goto_0

    :cond_1
    const/16 p0, 0x1388

    goto :goto_0

    .line 2621
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->STABLE:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    if-ne p0, v0, :cond_3

    const/16 p0, 0x1770

    goto :goto_0

    :cond_3
    const/16 p0, 0xbb8

    :goto_0
    return p0
.end method

.method private getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 0

    .line 1061
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRemainingCaptureDuration()I
    .locals 5

    .line 2631
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CaptureStartPoint:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 2644
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    return p0

    .line 2635
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTimeOnSnapshotReadyDone:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    long-to-int v2, v0

    .line 2641
    :cond_3
    :goto_0
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    sub-int/2addr p0, v2

    return p0
.end method

.method private getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;
    .locals 0

    .line 5741
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p2, p0, :cond_4

    if-eqz p5, :cond_2

    .line 5743
    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5745
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_0

    .line 5746
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5748
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_0

    .line 5750
    :cond_1
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_0

    .line 5756
    :cond_2
    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 5758
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_0

    .line 5760
    :cond_3
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 5765
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getVideoStabilizerDeviceValue() videoStabilizer: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " videoStabilizer.getValue(): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5766
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 5765
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5767
    :cond_5
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideDisplayFlashScreen()V
    .locals 0

    .line 5727
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p0, :cond_0

    .line 5728
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->hideDisplayFlashScreen()V

    :cond_0
    return-void
.end method

.method private incrementBGProcessingCount()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 758
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBGProcessingCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isBurst(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 2657
    const-string p1, "builder is null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return p0

    .line 2660
    :cond_0
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private isBypassCameraAvailable()Z
    .locals 1

    .line 689
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 690
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 691
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private isFlashRequiredBeforeCountdown()Z
    .locals 2

    .line 3720
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3724
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 3725
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3730
    :cond_1
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoFlashRequired:Z

    return p0
.end method

.method private isNeedCreatePreviewSession()Z
    .locals 1

    .line 346
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 347
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRecorderAvailable()Z
    .locals 1

    .line 5820
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 5821
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "VideoRecorder is null, releaseRecorder is called"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v0

    .line 5823
    :cond_1
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 5824
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "VideoRecorder is in stopping or releasing"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isZslCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private needsAutoExposure()Z
    .locals 3

    .line 2200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSuppressFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2203
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private needsForceSetAsAutoFocus()Z
    .locals 1

    .line 2211
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2212
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isLogicCameraOperationMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAfPassiveUnFocused()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private notifyRecordingStopCompleted()V
    .locals 4

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1086
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setRepeatingRequestForStopRecording()V

    return-void
.end method

.method private peekLastSavingPhotoRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 6

    const-string v0, "peekLastSavingPhotoRequest() capturing:"

    .line 2767
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 2768
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v3, 0x2

    .line 2770
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "CameraDeviceHandler"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 2771
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    .line 2770
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2773
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 2774
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    :cond_0
    return-void
.end method

.method private playShutterSoundIfNeed()V
    .locals 1

    .line 2361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_0

    .line 2362
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->shouldPlayShutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2363
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playSound(I)V

    :cond_0
    return-void
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method private releaseCameraActionSound()V
    .locals 2

    .line 1470
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseRecorder(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 3294
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3295
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz p0, :cond_0

    .line 3296
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->release()Z

    .line 3298
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3300
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask-IA;)V

    .line 3301
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private releaseRecorderOnCameraClosed()V
    .locals 1

    const/4 v0, 0x1

    .line 3286
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder(Z)V

    return-void
.end method

.method private requestCloseBypassCameraTimeoutTask(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 1450
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    .line 1451
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x186a0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 4838
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 4842
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4844
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->-$$Nest$mgetLatch(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4846
    const-string p1, "runOnCameraDeviceThreadSync() : Failed to await by InterruptedException"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setFocusRect(Landroid/graphics/Rect;)V
    .locals 5

    .line 3902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3904
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3908
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 3909
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Focus area change is not supported, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 3914
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked rect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3916
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const-string/jumbo v2, "user"

    if-eqz v1, :cond_6

    .line 3917
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3918
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3919
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 3920
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 3921
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 3923
    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    .line 3926
    :cond_6
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 3929
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3930
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3931
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 3932
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changeFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    return-void
.end method

.method private setFpsRange([I)V
    .locals 4

    .line 4203
    array-length v0, p1

    if-lez v0, :cond_5

    .line 4204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4206
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4211
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slow-motion"

    if-eq v1, v2, :cond_3

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4212
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isThermalWarningState()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x7

    const/16 p1, 0xf

    .line 4213
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewFpsRange(II)V

    .line 4215
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "invoked min:7 max:15"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 4221
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "invoked min:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " max:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4225
    :cond_4
    aget p0, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 4229
    :cond_5
    const-string p0, "Ilegal fps range is specified."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setFpsRangeOnThermalVideoRecord([I)V
    .locals 4

    .line 4234
    array-length v0, p1

    if-lez v0, :cond_3

    .line 4235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4237
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4242
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "invoked min:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " max:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4246
    :cond_2
    aget v0, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 4250
    :cond_3
    const-string p0, "Ilegal fps range is specified."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 2

    .line 4032
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4034
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4037
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked area:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " metering:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 4041
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4042
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4044
    const-string/jumbo p1, "user"

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    goto :goto_0

    .line 4047
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 4050
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringArea(Ljava/util/List;)V

    return-void
.end method

.method private setPreviewSize(Landroid/graphics/Rect;)V
    .locals 3

    .line 4087
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4089
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4092
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4094
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 4095
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 4096
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p0

    .line 4097
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 4098
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    return-void
.end method

.method private setRepeatingRequestForStopRecording()V
    .locals 3

    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    invoke-virtual {v0, p0, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    return-void
.end method

.method private shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .locals 2

    .line 406
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 407
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 409
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecording()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private waitUntilStopCompleted()V
    .locals 2

    .line 1185
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .locals 7

    .line 2503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2505
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2509
    :cond_1
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setRotation(I)V

    .line 2511
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->removeGpsData()V

    .line 2513
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    if-eqz v1, :cond_3

    .line 2514
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2515
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v1, v1, v5

    if-nez v1, :cond_2

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_3

    .line 2525
    :cond_2
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setGpsData(Landroid/location/Location;)V

    .line 2529
    :cond_3
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "invoked"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2531
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public varargs autoFocus([Ljava/lang/Object;)V
    .locals 10

    .line 2125
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2127
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2128
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 2129
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->createAfParametersResultChecker(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    move-result-object p1

    .line 2131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->isAfParametersReflectedToDevice(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshotReady(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_1

    .line 2136
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2137
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->requestSnapshotReadyAfterAfParametersReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2179
    array-length v1, p1

    if-lez v1, :cond_3

    .line 2180
    aget-object v1, p1, v0

    instance-of v2, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;

    if-eqz v2, :cond_3

    .line 2181
    check-cast v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;->isCameraBurst()Z

    move-result v1

    .line 2182
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;->isCameraKey()Z

    move-result v0

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    const/4 p1, 0x1

    .line 2186
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->needsAutoFocus(ZZ)Z

    move-result v6

    .line 2187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    if-eqz v0, :cond_5

    .line 2188
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->needsForceSetAsAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2189
    const-string v0, "Force set as auto focus mode."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->forceSetAsAutoFocusMode(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2192
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;

    .line 2193
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->needsAutoExposure()Z

    move-result v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    xor-int/lit8 v9, v1, 0x1

    const/4 v5, 0x1

    .line 2192
    invoke-virtual/range {v2 .. v9}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;ZZZLandroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public awaitLoadSettingsThread()Z
    .locals 6

    const-string v0, "Thread:"

    .line 1547
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1548
    const-string p0, "awaitSettingLoadThread thread is unnecessary"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v2

    :cond_0
    const-wide/16 v3, 0xfa0

    const/4 v5, 0x0

    .line 1554
    :try_start_0
    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->join(J)V

    .line 1556
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1557
    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is Timed out."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    :cond_1
    move v5, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is Interrupted."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is Cancelled."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1568
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invoked success:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v5
.end method

.method public canRecorderTakeSnapshot()Z
    .locals 4

    .line 3661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3662
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStarting()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 3663
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3664
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3665
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :catchall_0
    move-exception p0

    .line 3664
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .line 2386
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 2387
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isAutoFocus:Z

    .line 2388
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshotFree(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :goto_0
    return-void
.end method

.method public cancelPreProcessState()V
    .locals 1

    .line 281
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method public captureWhileRecording(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 1

    .line 3452
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-void
.end method

.method public clearSavingPhotoRequest()V
    .locals 8

    const-string v0, "clearSavingPhotoRequestBackup() cleared photo number: "

    const-string v1, "clearSavingPhotoRequest() cleared photo number: "

    .line 2789
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    .line 2790
    monitor-enter v2

    .line 2791
    :try_start_0
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_0

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "CameraDeviceHandler"

    aput-object v7, v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 2792
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 2791
    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2793
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 2794
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2797
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    if-eqz v1, :cond_3

    .line 2798
    monitor-enter v1

    .line 2799
    :try_start_1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 2800
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "CameraDeviceHandler"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    .line 2801
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 2800
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2802
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSavingPhotoRequestQueueBackup:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->clear()V

    .line 2803
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public closeCamera()V
    .locals 1

    const/4 v0, 0x0

    .line 1369
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera(Z)V

    return-void
.end method

.method public closeCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 1379
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked requested-session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " current-session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    .line 1382
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    :cond_1
    return-void
.end method

.method public closeCamera(Z)V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1101
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1102
    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1111
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    .line 1112
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1113
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1123
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    goto :goto_1

    .line 1121
    :cond_3
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1131
    :goto_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    or-int/2addr p1, v0

    if-nez p1, :cond_4

    .line 1133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    .line 1135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 1136
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x1

    .line 1141
    :cond_4
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked sync:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1144
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1145
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 1147
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 1149
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    if-eqz v0, :cond_7

    .line 1150
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->disable()V

    .line 1151
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    .line 1156
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1157
    const-string v0, "Camera is waiting for completion of capturing in recording video."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitAllSnapshotDone()V

    .line 1162
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelChangeProviderDeviceStatusToRecording()V

    .line 1164
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "post StopRecorderTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1165
    :cond_9
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask-IA;)V

    .line 1166
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1170
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->waitUntilStopCompleted()V

    .line 1173
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->closeCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1177
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->closeBypassCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1180
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestCloseBypassCameraTimeoutTask(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1181
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseCameraActionSound()V

    return-void
.end method

.method public closeVirtualCamera()V
    .locals 0

    .line 2056
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;->close()V

    return-void
.end method

.method public commit()V
    .locals 2

    .line 4339
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked pre-process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain-saving-photo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4340
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4339
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4341
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 4342
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 4345
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_6

    .line 4352
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4355
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_5

    .line 4356
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4357
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Should not update picture image reader in video mode."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void

    .line 4361
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    :cond_6
    return-void
.end method

.method public disableBokehMode()V
    .locals 1

    .line 4531
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4533
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4537
    :cond_1
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setBokehMode(Ljava/lang/String;)V

    return-void
.end method

.method public disableBokehModeAndCommit()V
    .locals 1

    .line 4526
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableBokehMode()V

    .line 4527
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public disableFpsLimitation()V
    .locals 1

    .line 1610
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1611
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    return-void
.end method

.method public doAutoExposureForS2SCapture()V
    .locals 1

    .line 2424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoExposureForS2SCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public enableBokehMode()V
    .locals 1

    .line 4516
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4518
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4522
    :cond_1
    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setBokehMode(Ljava/lang/String;)V

    return-void
.end method

.method public enableBokehModeAndCommit()V
    .locals 1

    .line 4511
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enableBokehMode()V

    .line 4512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public enableFpsLimitation()V
    .locals 3

    .line 1582
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1585
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1588
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPowerMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ultra-low"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1589
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPowerMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "low"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1590
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slow-motion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 1594
    :cond_4
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 1595
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    .line 1596
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreferredPhotoPreviewFps()I

    move-result v1

    .line 1599
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1601
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILjava/util/List;)[I

    move-result-object v0

    .line 1603
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    .line 1604
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_5
    return-void
.end method

.method public finalizeRecording()V
    .locals 4

    .line 3399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3400
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3401
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "post StopRecorderTask"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3402
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask-IA;)V

    .line 3403
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3404
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseMediaRecorder()V

    .line 3405
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    .line 3406
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->getRecordingTimeMillis()J

    move-result-wide v1

    .line 3407
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setDuration(J)V

    goto :goto_0

    .line 3409
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    new-array p0, v3, [Ljava/lang/String;

    const-string v1, "Recorder doesn\'t exists, so this request is refused."

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3411
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishBokehPreview()V
    .locals 1

    .line 2914
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2915
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->finishBokehPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public finishBurst()V
    .locals 2

    .line 2832
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2833
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->finishBurst(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2834
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFinishBurstMonitoring()V

    .line 2835
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    .line 2836
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2837
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void
.end method

.method public finishHDRCapture()V
    .locals 2

    .line 2890
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2891
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$8;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finishLowLightCapture()V
    .locals 1

    .line 2720
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->finishLowLightCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public finishNightPortraitCapture()V
    .locals 1

    .line 2904
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2905
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->finishNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public finishNoZslBufferCapture()V
    .locals 4

    .line 2736
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    invoke-virtual {v0, p0, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    return-void
.end method

.method public finishSlowMotionRecording()V
    .locals 1

    .line 2728
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->finishSlowMotionRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public finishWalkingPreview()V
    .locals 1

    .line 2929
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2930
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->finishWalkingPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public flushRecording(Z)V
    .locals 0

    return-void
.end method

.method public getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1942
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;
    .locals 0

    .line 1069
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentCameraType()Ljava/lang/String;
    .locals 0

    .line 4666
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCurrentCameraType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDeviceID()Ljava/lang/String;
    .locals 0

    .line 5733
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCurrentDeviceID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
    .locals 0

    .line 3618
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method public getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .locals 0

    .line 1725
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object p0
.end method

.method public getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1966
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1967
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1970
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getVideoPreviewSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1973
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object p0

    .line 1974
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p0, v0, :cond_1

    .line 1978
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1981
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getVideoPreviewSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1984
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getRemainPrevSavingRequestCount()I
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainPrevSavingRequestCount()I

    move-result p0

    return p0
.end method

.method public getRemainSavingPhotoRequestCount()I
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result p0

    return p0
.end method

.method public getSendPauseEventAndReleaseCameraTaskToken()Ljava/lang/Object;
    .locals 0

    .line 355
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;

    return-object p0
.end method

.method public getSettingHdrValue()Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .locals 2

    .line 4410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-nez v0, :cond_0

    .line 4411
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object p0

    .line 4413
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 4414
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object p0
.end method

.method public getStreamingImageRetriever()Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 0

    .line 4868
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getStreamingImageRetriever()Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object p0

    return-object p0
.end method

.method public getZoom()Ljava/lang/Float;
    .locals 0

    .line 1053
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleSelftimerStarted()V
    .locals 1

    .line 3734
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3735
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3737
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 3741
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isFlashRequiredBeforeCountdown()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3742
    const-string p0, "on"

    goto :goto_0

    .line 3743
    :cond_3
    const-string p0, "off"

    .line 3741
    :goto_0
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashBeforeCountdown(Ljava/lang/String;)V

    return-void
.end method

.method public handleSelftimerStopped()V
    .locals 1

    .line 3760
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3761
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_2

    .line 3763
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 3767
    :cond_2
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashBeforeCountdown(Ljava/lang/String;)V

    return-void
.end method

.method public initLogicalCameraMode()V
    .locals 1

    .line 3531
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3532
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->initLogicalCameraMode()V

    return-void
.end method

.method public isAutoNightDetected()Z
    .locals 0

    .line 2846
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoNightDetected:Z

    return p0
.end method

.method public isBGProcessingRestricted()Z
    .locals 6

    .line 777
    invoke-static {}, Lcom/sonyericsson/android/camera/util/MemoryAnalyzer;->getAvailMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x2bc00000

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x12c00000

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v2, v3

    .line 787
    :goto_0
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mBGProcessingCount:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 788
    :cond_2
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "availMemory:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 789
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bgCountThreshold:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 791
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBGProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lt p0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public isBokehOn()Z
    .locals 3

    .line 2853
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2856
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isBurstAvaliable()Z
    .locals 0

    .line 2684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isBurstAvailable()Z

    move-result p0

    return p0
.end method

.method public isBypassCameraNextShotAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBypassCameraSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCameraDeviceStatusReady()Z
    .locals 1

    .line 3109
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraDisabled()Z
    .locals 0

    .line 1578
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    return p0
.end method

.method public isCameraFront()Z
    .locals 1

    .line 1949
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    .line 1950
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCaptureAfterOpenAvailabled()Z
    .locals 0

    .line 2696
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isCaptureAfterOpenAvailabled()Z

    move-result p0

    return p0
.end method

.method public isCaptureAvailabled()Z
    .locals 0

    .line 2692
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isCaptureAvailabled()Z

    move-result p0

    return p0
.end method

.method public isFinishBurstDone()Z
    .locals 0

    .line 3609
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFinishBurstDone()Z

    move-result p0

    return p0
.end method

.method public isFlashRequired(Z)Z
    .locals 0

    .line 2664
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->isFlashRequired(Z)Z

    move-result p0

    return p0
.end method

.method public isInFocus()Z
    .locals 0

    .line 5847
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isInFocusStatus()Z

    move-result p0

    return p0
.end method

.method public isLogicCameraOperationMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNightPortrait()Z
    .locals 1

    .line 2676
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2680
    :cond_0
    const-string v0, "night_portrait"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNormalLight()Z
    .locals 0

    .line 2672
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isNormalLight()Z

    move-result p0

    return p0
.end method

.method public isObjectTrackingRunning()Z
    .locals 0

    .line 3622
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result p0

    return p0
.end method

.method public isPreCaptureOnGoing()Z
    .locals 2

    .line 1720
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPreScanOnGoing()Z
    .locals 1

    .line 1716
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecorderInited()Z
    .locals 0

    .line 5831
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-nez p0, :cond_1

    .line 5832
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "VideoRecorder is null, releaseRecorder is called"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isRecorderReady()Z
    .locals 1

    .line 3086
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3087
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3088
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRecorderReleased()Z
    .locals 0

    .line 5839
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5843
    :cond_0
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isReleased()Z

    move-result p0

    return p0
.end method

.method public isRecorderWorking()Z
    .locals 6

    const-string v0, "invoked isRecorderWorking() isRecording:"

    .line 3643
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3644
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3645
    monitor-exit v1

    return v3

    .line 3646
    :cond_0
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 3647
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 3648
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3649
    monitor-exit v1

    return v3

    :cond_1
    const/4 v2, 0x1

    .line 3651
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 3652
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " isPaused:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 3653
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " isStopping:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 3654
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    .line 3651
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3655
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    .line 3656
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRecording()Z
    .locals 0

    .line 3635
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isScreenRecording()Z
    .locals 2

    .line 5721
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "somc.is_aosp_recording"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isStillHDROn()Z
    .locals 5

    .line 2860
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 2862
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v0

    .line 2865
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getStillHdr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillHdr;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2866
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "front-wide-camera"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "front-camera"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "normal"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v0

    :pswitch_0
    if-ne v3, v1, :cond_5

    move v0, v3

    :cond_5
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_2
        0xcd9bf49 -> :sswitch_1
        0x519eb5bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSuperNightMode()Z
    .locals 0

    .line 2841
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2842
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSuperNightMode()Z

    move-result p0

    return p0
.end method

.method public isTouchCaptureOn()Z
    .locals 2

    .line 2668
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWalkingCondition()Z
    .locals 0

    .line 2688
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isWalkingCondition()Z

    move-result p0

    return p0
.end method

.method public isZoomed()Z
    .locals 2

    .line 2700
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2701
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2706
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result p0

    .line 2707
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public lock3A(Z)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->lock3A(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method public needsAutoFocus(ZZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2227
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->needsForceSetAsAutoFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 2231
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSuppressFlash()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 2234
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isFlashRequired(Z)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public declared-synchronized openCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 3

    const-string v0, "invoked mode:"

    monitor-enter p0

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;->openCamera()V

    .line 1009
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/sonyericsson/android/camera/device/CameraController;->openCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 1012
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 1014
    sget-object p4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p1, p4, :cond_1

    iget-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    if-eqz p4, :cond_0

    .line 1015
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result p4

    if-nez p4, :cond_1

    .line 1016
    :cond_0
    new-instance p4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/4 v1, 0x0

    invoke-direct {p4, p0, p2, p3, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread-IA;)V

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 1017
    const-string p3, "LoadSettingsThread"

    invoke-virtual {p4, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->setName(Ljava/lang/String;)V

    .line 1018
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/16 p4, 0xa

    invoke-virtual {p3, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->setPriority(I)V

    .line 1019
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->start()V

    .line 1022
    :cond_1
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " quick-launch:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1024
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pauseRecording()V
    .locals 2

    .line 3416
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3418
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3419
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3420
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->pause()V

    .line 3421
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraAudioRestriction(Z)V

    .line 3423
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3425
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "pauseRecording():[Failed to pause MediaRecorder.]"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public playOnShutterDoneSound()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnShutterDone()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    return-void
.end method

.method public playSound(I)V
    .locals 2

    .line 383
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_0

    .line 386
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    :goto_0
    return-void
.end method

.method public preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .locals 5

    .line 1633
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1637
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p0

    return-object p0

    .line 1640
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createPreCaptureSavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 1641
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1644
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_CAPTURE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 1645
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1648
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V

    goto :goto_1

    .line 1650
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1652
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_QUICK_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 1653
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback-IA;)V

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;

    invoke-direct {v4, p0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback-IA;)V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->takeQuickPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 1658
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback-IA;)V

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;

    invoke-direct {v4, p0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCapturePictureTakenCallback-IA;)V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->takePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1665
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 1670
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeCaptureStart()V

    .line 1673
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 1675
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1676
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnCaptureRequest()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    .line 1679
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p0
.end method

.method public preScan()V
    .locals 4

    .line 1687
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1688
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;

    .line 1690
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1691
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1701
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$7;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 5

    const-string v0, "invoked mode:"

    monitor-enter p0

    .line 890
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 891
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 893
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->-$$Nest$mgetLatch(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 895
    :try_start_2
    const-string p2, "InitControllerTask is interrupted."

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    :goto_0
    monitor-exit p0

    return-object v2

    .line 899
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 900
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    new-array p1, v3, [Ljava/lang/String;

    const-string p2, "Camera is already preloaded."

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 901
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    .line 906
    :try_start_4
    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 912
    :cond_3
    :try_start_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->-$$Nest$mgetLatch(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 918
    :try_start_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq p1, v1, :cond_4

    .line 919
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    :cond_4
    if-eqz p4, :cond_5

    .line 924
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 925
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    goto :goto_1

    .line 927
    :cond_5
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 929
    :goto_1
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 931
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 934
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_6

    new-array p1, v3, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " fast-capture:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 936
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCloseBypassCameraTimeoutTask()V

    .line 937
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    .line 914
    :try_start_7
    const-string p2, "InitControllerTask is interrupted."

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 915
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepareBokehPreview()V
    .locals 1

    .line 2909
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2910
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareBokehPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public prepareBurst()V
    .locals 4

    .line 2824
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2825
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareBurst(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2826
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    .line 2827
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2828
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void
.end method

.method public declared-synchronized prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z
    .locals 3

    monitor-enter p0

    .line 950
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 954
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 956
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 958
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 959
    new-array p1, v1, [Ljava/lang/String;

    const-string p2, "Use of camera is prohibited by device policy."

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 960
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    const-string p2, "Camera is disabled, so this request was refused."

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 961
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    monitor-exit p0

    return v2

    .line 964
    :cond_1
    :try_start_1
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 966
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 967
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 969
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createCameraActionSound()V

    .line 971
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 972
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1, v0, p3, v2, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 974
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCloseBypassCameraTimeoutTask()V

    .line 977
    :cond_2
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 978
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;-><init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 979
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 980
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested2(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->addOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)V

    .line 985
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraInfo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/device/CameraInfo;)V

    .line 986
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 987
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1, v0, p3, v2, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 989
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCloseBypassCameraTimeoutTask()V

    .line 991
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->initializeCaptureRequest(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V
    .locals 1

    .line 4647
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4648
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4649
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    :cond_1
    return-void
.end method

.method public prepareHDRCapture()V
    .locals 1

    .line 2885
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2886
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareHDRCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public prepareLowLightCapture()V
    .locals 1

    .line 2715
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2716
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareLowLightCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public prepareNightPortraitCapture()V
    .locals 1

    .line 2899
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2900
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public prepareNoZslBufferCapture()V
    .locals 3

    .line 2732
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    invoke-virtual {v0, p0, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    return-void
.end method

.method public prepareRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 3169
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3170
    :try_start_0
    iget-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3171
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Recorder is stopping, so this request is refused."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3172
    :cond_0
    monitor-exit v3

    return-void

    .line 3174
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3176
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3177
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Recorder is already ready,  so this request is refused.."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3181
    :cond_2
    iput-object v1, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 3183
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3185
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 3188
    :cond_3
    iget-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v4

    if-nez v4, :cond_4

    return-void

    .line 3192
    :cond_4
    new-instance v14, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;

    iget-object v8, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 3196
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getProgressInterval()I

    move-result v10

    .line 3198
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v12

    .line 3199
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v13

    move-object v7, v14

    move-object/from16 v9, p2

    move/from16 v11, p3

    invoke-direct/range {v7 .. v13}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;-><init>(Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;IZLjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 3201
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 3203
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    invoke-direct {v7, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 3208
    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;

    invoke-direct {v8, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 3214
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v9

    .line 3217
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 3218
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v11

    const/4 v15, 0x0

    if-eqz v11, :cond_5

    move-object v11, v7

    goto :goto_0

    :cond_5
    move-object v11, v15

    :goto_0
    iget-object v12, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 3220
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v5

    long-to-int v5, v5

    .line 3221
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameNum(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v6

    long-to-int v13, v6

    iget-object v6, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v9, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-object v7, v10

    move-object/from16 v16, v9

    move-object v9, v11

    move-object v10, v12

    move-object v11, v14

    move v12, v5

    move-object v14, v6

    move-object v5, v15

    move-object/from16 v15, v16

    .line 3216
    invoke-static/range {v7 .. v15}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;IILcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v6

    move-object/from16 v7, p5

    .line 3224
    invoke-interface {v6, v7}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setStorageWriteNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V

    .line 3226
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;

    invoke-direct {v7, v0, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)V

    .line 3227
    iget-object v6, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_9

    .line 3236
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v6, v7, :cond_6

    .line 3238
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->isAudioPolicyActive(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .line 3240
    :goto_1
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invoked uri:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " audio-record-enabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3243
    :cond_7
    new-instance v7, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    iget-object v8, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-direct {v7, v3, v2, v8}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;-><init>(Landroid/net/Uri;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 3245
    invoke-virtual {v7, v3}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setLocation(Landroid/location/Location;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    iget-object v7, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v7, v7

    .line 3246
    invoke-virtual {v3, v7}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMaxDuration(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    iget-object v7, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    .line 3247
    invoke-virtual {v3, v7, v8}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMaxFileSize(J)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    .line 3248
    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMicrophoneEnabled(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 3249
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setOrientationHint(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v1

    .line 3250
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setHdr(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v1

    .line 3251
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v1

    .line 3252
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    move-result-object v1

    .line 3254
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;

    invoke-direct {v2, v0, v1, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask-IA;)V

    .line 3256
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3230
    :cond_9
    const-string v0, "prepareRecorder() : VideoProfile is null."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3231
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VideoProfile is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 3174
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepareWalkingPreview()V
    .locals 1

    .line 2919
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2920
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareWalkingPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public releaseRecorder()V
    .locals 1

    .line 3269
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3270
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder(Z)V

    return-void
.end method

.method public releaseRecorderOnError()V
    .locals 1

    .line 3274
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3276
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder(Z)V

    .line 3278
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    return-void
.end method

.method public releaseVideo()V
    .locals 1

    .line 3446
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3448
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    return-void
.end method

.method public removeOnPreviewStartedListener()V
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->removeOnPreviewStartedListener()V

    return-void
.end method

.method public requestOnePreviewFrame()V
    .locals 2

    .line 3459
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3460
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->requestOnePreviewFrame(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 3

    .line 3883
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3885
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3888
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 3890
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getFocusArea()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 3892
    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFocusRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resetFocusModeAndCommit()V
    .locals 3

    .line 3056
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3058
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3063
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 3065
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Focus position change is not supported, so this request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 3069
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked current-focus-mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3071
    :cond_4
    const-string v1, "manual"

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3075
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 3074
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultFocusModeForFastCapturePhoto(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v1

    .line 3073
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 3079
    :cond_5
    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3080
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 3082
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public resetLogicalCameraMode()V
    .locals 1

    .line 3536
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3537
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->resetLogicalCameraMode()V

    return-void
.end method

.method public resumeNormalFpsOnThermalVideoRecord(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 3

    .line 1615
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1618
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1621
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slow-motion"

    if-ne v1, v2, :cond_3

    return-void

    .line 1624
    :cond_3
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p1

    .line 1626
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p2

    .line 1627
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILjava/util/List;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRangeOnThermalVideoRecord([I)V

    .line 1629
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public resumeRecording()V
    .locals 2

    .line 3430
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3433
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3434
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3435
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->resume()V

    .line 3436
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraAudioRestriction(Z)V

    .line 3437
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->incrementCountRecordResume()V

    .line 3439
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3441
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "resumeRecording():[Failed to resume MediaRecorder.]"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V
    .locals 2

    .line 4599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4601
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4604
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onde-shot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " preview-size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4606
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4604
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4608
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    .line 4611
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setPreviewSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 4612
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p3, p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 4613
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    :cond_4
    :goto_0
    return-void
.end method

.method public saveZoomSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/LastSettings;)V
    .locals 2

    .line 4617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4619
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setLatestZoomRatio(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;F)V

    .line 4620
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getZoomDialZoomValue()F

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setLatestZoomValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;F)V

    .line 4621
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getZoomStep()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setLatestZoomStep(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;I)V

    .line 4622
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 4623
    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setLatestPhotoSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 4624
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setLatestVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 4625
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->saveZoomInfo()V

    :cond_0
    return-void
.end method

.method public screenOff()V
    .locals 0

    .line 5851
    invoke-static {}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getInstance()Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->screenOff()V

    return-void
.end method

.method public sendRecordingStartTag()V
    .locals 2

    .line 3483
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    .line 3484
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->sendRecordingStartTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 3486
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :goto_0
    return-void
.end method

.method public sendRecordingStopTag()V
    .locals 2

    .line 3491
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    .line 3492
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->sendRecordingStopTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 3494
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :goto_0
    return-void
.end method

.method public setAIClearFace(Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;)V
    .locals 2

    .line 4127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4129
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4133
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4134
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAIClearFace(Ljava/lang/String;)V

    return-void
.end method

.method public setActivityForeground(Z)V
    .locals 0

    .line 4560
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    return-void
.end method

.method public setAmberBlueColorAndCommit(I)V
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1736
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1740
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAwbColorCompensationAb(I)V

    .line 1742
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1744
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setBokehStrength(F)V
    .locals 2

    .line 4546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bokeh strength is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4547
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4549
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4552
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setBokehStrength(F)V

    return-void
.end method

.method public setBokehStrengthAndCommit(F)V
    .locals 0

    .line 4541
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setBokehStrength(F)V

    .line 4542
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setBrightnessAndCommit(I)V
    .locals 2

    .line 1756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1758
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1761
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureCompensation(I)V

    .line 1763
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1765
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3

    .line 4374
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4376
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4378
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4381
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setCameraMode(Ljava/lang/String;)V

    .line 4383
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 4384
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 4385
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 4388
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p1, v1, :cond_4

    .line 4390
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    :cond_4
    const/4 p1, 0x0

    .line 4393
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 4395
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez p1, :cond_5

    .line 4397
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 4398
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreferredPhotoPreviewFps()I

    move-result v1

    .line 4399
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v2

    .line 4397
    invoke-static {p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILjava/util/List;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    .line 4401
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setLogicalMultiCameraMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 4406
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method public setDisableBGProcess(Z)V
    .locals 1

    .line 3747
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3748
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_2

    .line 3750
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 3755
    const-string p1, "on"

    goto :goto_0

    .line 3756
    :cond_3
    const-string p1, "off"

    .line 3754
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setDisableBGProcess(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V
    .locals 2

    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1842
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1844
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Display flash is not supported, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1849
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 1860
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1861
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    return-void

    .line 1851
    :cond_5
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setDisplayFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V
    .locals 2

    .line 1894
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1899
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1900
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisplayFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    .line 1901
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDistortionCorrection(Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;)V
    .locals 3

    .line 4494
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4496
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4499
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4502
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 4504
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 4507
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setDistortionCorrection(Ljava/lang/String;)V

    return-void
.end method

.method public setEv(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V
    .locals 2

    .line 3838
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3840
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3843
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3844
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->getIntValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureCompensation(I)V

    return-void
.end method

.method public setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 3

    .line 1773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1775
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1779
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1781
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Display flash is supported, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1785
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v1

    .line 1786
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1787
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 1789
    :cond_4
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1790
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 1793
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    .line 1795
    const-string/jumbo v0, "torch"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1797
    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    goto :goto_0

    .line 1799
    :cond_6
    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    .line 1794
    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1800
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void
.end method

.method public setFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 1

    .line 1869
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1875
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1876
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    .line 1871
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 3

    .line 3855
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3857
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3860
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3862
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_3

    .line 3863
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValueForVideo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 3865
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 3869
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3870
    const-string v0, "Camera focus isn\'t supported. FocusArea is not set."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 3873
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 3877
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3878
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    :cond_5
    return-void
.end method

.method public setFocusPositionAndCommit(Landroid/graphics/Rect;)V
    .locals 8

    .line 3003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3005
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3010
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 3012
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Focus position change is not supported, so this request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 3017
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3020
    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 3021
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invoked rect:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3022
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changeFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3024
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3025
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3026
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 3028
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3029
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isTouchCaptureOn()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3030
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "CameraDeviceHandler"

    const-string p1, "TouchCapture is ON, no need AF, return."

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void

    .line 3033
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;ZZZLandroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method public setFocusRange(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;I)V
    .locals 3

    .line 4433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4435
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4438
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " focus-mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4439
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 4438
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4442
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_3

    return-void

    .line 4446
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne p1, v1, :cond_5

    .line 4447
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4448
    const-string p0, "continuous-picture"

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 4450
    :cond_4
    const-string p0, "fixed"

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 4456
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4457
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    .line 4460
    :cond_6
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 4461
    const-string p0, "center"

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4462
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 4463
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne p0, p1, :cond_7

    .line 4465
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_1M:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRange(F)V

    goto :goto_1

    .line 4467
    :cond_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->calculateFocusRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)F

    move-result p0

    .line 4468
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRange(F)V

    :goto_1
    return-void
.end method

.method public setFrontFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;)V
    .locals 3

    .line 1808
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1810
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1814
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v1

    .line 1815
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1816
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    .line 1818
    :cond_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1819
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 1822
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    .line 1824
    const-string/jumbo v0, "torch"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1826
    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    goto :goto_0

    .line 1828
    :cond_4
    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    .line 1823
    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1829
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void
.end method

.method public setFrontFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;)V
    .locals 1

    .line 1879
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1885
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFrontFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;)V

    .line 1886
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    .line 1881
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFusionMode(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .locals 2

    .line 4478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4480
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4483
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4485
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFusionMode(Ljava/lang/String;)V

    return-void
.end method

.method public setHdr(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 3

    .line 3936
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3938
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3941
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3943
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAlwaysHdrOnEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3944
    const-string p0, "on-still-hdr"

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setStillHdr(Ljava/lang/String;)V

    goto :goto_0

    .line 3946
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setStillHdr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setIsInShutdownNow(Z)V
    .locals 0

    .line 4564
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    return-void
.end method

.method public setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 3

    .line 3975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3977
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3981
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutter-speed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3982
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3981
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3983
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setIso(I)V

    return-void
.end method

.method public setLowPower()V
    .locals 2

    .line 3771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3773
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3776
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "invoked"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3777
    :cond_2
    const-string v1, "low"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPowerMode(Ljava/lang/String;)V

    .line 3778
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 3

    .line 3992
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3994
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3998
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3999
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4002
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    return-void
.end method

.method public setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 2

    .line 4014
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4018
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4021
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 4022
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setNightMode(Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;)V
    .locals 2

    .line 3964
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3966
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3969
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3971
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setNightMode(Ljava/lang/String;)V

    return-void
.end method

.method public setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 3674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3676
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3680
    :cond_1
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez p0, :cond_2

    .line 3681
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setRotation(I)V

    .line 3682
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    :cond_2
    return-void
.end method

.method public setOrientationAndCommit(I)V
    .locals 1

    .line 3692
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3694
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3697
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v0, :cond_2

    .line 3698
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOrientation(I)V

    .line 3699
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_2
    return-void
.end method

.method public setParameter(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1039
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setParameters(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setPredictiveCapture(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .locals 2

    .line 3793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3795
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3800
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAlwaysPredictiveCaptureEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3801
    const-string p0, "PredictiveCapture setting has been overwritten by DebugParameterUtils."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 3802
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 3804
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPredictiveCapture(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPredictiveCaptureNum(I)V

    return-void
.end method

.method public setPredictiveCaptureAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .locals 3

    .line 3809
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3812
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    .line 3813
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3814
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PredictiveCapture setting was changed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3816
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3814
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3820
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPredictiveCapture(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    .line 3821
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3822
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1
    return-void
.end method

.method public setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 2

    .line 4178
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked cameraId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video-size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4179
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getVideoPreviewSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4181
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 4184
    invoke-static {p2, p3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p3

    const/16 v0, 0x78

    if-lt p3, v0, :cond_1

    .line 4186
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportSlowMotionFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 4188
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 4195
    invoke-static {p1, p3, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILjava/util/List;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    return-void

    .line 4192
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unexpected supportFpsRange"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4198
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    .line 2071
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked surface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setSurface(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLandroid/view/Surface;)V

    return-void
.end method

.method public setQrCodeDetection(Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;)V
    .locals 2

    .line 2004
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2006
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getQrCodeDetection()Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 2007
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setQrCodeDetection(Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;)V

    .line 2008
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_1
    return-void
.end method

.method public setResolution(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 4

    .line 4054
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4056
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4059
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked cameraId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prev-resolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4060
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 4059
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4063
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 4066
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v1, :cond_3

    .line 4067
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 4071
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 4072
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 4071
    invoke-virtual {v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4073
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v1, :cond_4

    .line 4074
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 4075
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSize(Landroid/graphics/Rect;)V

    return-void

    .line 4077
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setSSTriggerTag(Z)V
    .locals 2

    .line 2934
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, " invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setSSTriggerTag(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V

    return-void
.end method

.method public setSelectedFacePosition(II)V
    .locals 2

    .line 2944
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked x:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2945
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2947
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 2951
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2952
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusModeAndCommit()V

    .line 2953
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setSelectedFacePosition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;II)V

    goto :goto_0

    .line 2956
    :cond_3
    const-string p0, "Face detection is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setShutterSpeed(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V
    .locals 2

    .line 4418
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4420
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4423
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iso:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4425
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanoMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setShutterSpeed(J)V

    return-void
.end method

.method public setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .locals 2

    .line 1995
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1997
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 1998
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V

    .line 1999
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_1
    return-void
.end method

.method public setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 3

    .line 4302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4304
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4307
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4309
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    if-ne v1, p1, :cond_3

    return-void

    .line 4313
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_4

    .line 4314
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 4317
    :cond_4
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 4318
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_5

    .line 4329
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide p0

    .line 4328
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureTimeLimit(J)V

    goto :goto_0

    .line 4322
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    .line 4323
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    .line 4322
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, p0

    .line 4321
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureTimeLimit(J)V

    :goto_0
    return-void
.end method

.method public setSoftSkin(Ljava/lang/Boolean;)V
    .locals 2

    .line 4102
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v0, :cond_1

    .line 4103
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "This request was refused. video:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cameraId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 4103
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4109
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4111
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 4115
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "invoked value:"

    if-eqz p1, :cond_5

    .line 4116
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4117
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 4118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)I

    move-result p0

    .line 4117
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSoftSkin(I)V

    goto :goto_0

    .line 4120
    :cond_5
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4121
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 4122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)I

    move-result p0

    .line 4121
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSoftSkin(I)V

    :goto_0
    return-void
.end method

.method public setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 2

    .line 2048
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked prev:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2049
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p1, :cond_1

    .line 2051
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

    :cond_1
    return-void
.end method

.method public setSuperResolutionZoom(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;)V
    .locals 2

    .line 2014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2016
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2021
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperResolutionZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 2023
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    .line 2026
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2027
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSuperResolutionZoom(Ljava/lang/String;)V

    return-void
.end method

.method public setTorchAndCommit(Z)V
    .locals 2

    .line 3708
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3714
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked on:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 3715
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 3716
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    .line 3710
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setUltraLowPower()V
    .locals 2

    .line 3782
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3784
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3787
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "invoked"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3788
    :cond_2
    const-string/jumbo v1, "ultra-low"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPowerMode(Ljava/lang/String;)V

    .line 3789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setVideoBacklightCorrection(Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;)V
    .locals 2

    .line 4160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4162
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4167
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBacklightCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 4169
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    .line 4172
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4173
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoBacklightCorrection(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 3

    .line 4568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4570
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4573
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4575
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v1

    if-eq v1, p1, :cond_3

    .line 4576
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 4577
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 4578
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_3
    return-void
.end method

.method public setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 3

    if-nez p1, :cond_0

    .line 4261
    const-string p0, "Ilegal video size is specified."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 4265
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4267
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4270
    :cond_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4273
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    if-eq v1, p1, :cond_4

    .line 4274
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_4

    .line 4275
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 4281
    :cond_4
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 4282
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_5

    .line 4283
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    :cond_5
    return-void
.end method

.method public setVideoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Z)V
    .locals 7

    .line 4138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4140
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4144
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    .line 4145
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    .line 4144
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object p2

    .line 4147
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " video:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " deviceValue:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4150
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4151
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 4156
    :cond_3
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSuperResolutionZoom(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;)V
    .locals 2

    .line 2031
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2033
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2038
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoSuperResolutionZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 2040
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    .line 2043
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2044
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSuperResolutionZoom(Ljava/lang/String;)V

    return-void
.end method

.method public setWhiteBalance(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V
    .locals 2

    .line 4288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4290
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4293
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4295
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    .line 2969
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2973
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setZoom(F)V

    return-void
.end method

.method public setZoomAndCommit(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const v1, -0x462e48e9    # -4.0E-4f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 2986
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    goto :goto_0

    .line 2988
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 2990
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setZoomKeyTag(Z)V
    .locals 0

    .line 2994
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setZoomKeyTag(Z)V

    return-void
.end method

.method public shouldShowDisplayFlash()Z
    .locals 4

    .line 2255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2257
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so return false by default."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v1

    .line 2260
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2261
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Only front camera support display flash."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v1

    .line 2264
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    return p0

    .line 2266
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2267
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->shouldTriggerDisplayFlash()Z

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public startAutoFlashMonitoring()V
    .locals 3

    .line 3544
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3545
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoFlashMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 v0, 0x0

    .line 3546
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoFlashRequired:Z

    return-void
.end method

.method public startAutoHdrMonitoring()V
    .locals 2

    .line 3562
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3563
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoHdrMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public startAutoNightMonitoring()V
    .locals 2

    .line 3578
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3579
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoNightDetected:Z

    .line 3580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoNightMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public startBokehMonitoring()V
    .locals 2

    .line 3518
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3519
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startBokehMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 1908
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1909
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public startFinishBurstMonitoring()V
    .locals 2

    .line 3596
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3597
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startFinishBurstMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public startFusionMonitoring()V
    .locals 1

    .line 3502
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3503
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startFusionMonitoring(Landroid/os/Handler;)V

    return-void
.end method

.method public startObjectTracking(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V
    .locals 2

    .line 3470
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3471
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->startObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    return-void
.end method

.method public startPreview()V
    .locals 3

    .line 2080
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 3306
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3307
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sendRecordingStartTag()V

    .line 3308
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->setSavingRequestBuilder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    .line 3309
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "post StartRecorderTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3310
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask-IA;)V

    .line 3311
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startSceneRecognition()V
    .locals 2

    .line 1924
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public startSuperSlowMotion()V
    .locals 2

    .line 3356
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3357
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    instance-of v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    if-eqz v0, :cond_1

    .line 3362
    :try_start_0
    check-cast p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startSuperSlow()Z
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startSuperSlowMotion() failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void

    .line 3358
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Current recorder doesn\'t support slow motion"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopAudioRecording()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->stopAudioRecording()V

    .line 367
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

.method public stopAutoFlashMonitoring()V
    .locals 2

    .line 3553
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3554
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoFlashMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 v0, 0x0

    .line 3555
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoFlashRequired:Z

    return-void
.end method

.method public stopAutoHdrMonitoring()V
    .locals 1

    .line 3570
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoHdrMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopAutoNightMonitoring()V
    .locals 2

    .line 3587
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3588
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoNightMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 v0, 0x0

    .line 3589
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsAutoNightDetected:Z

    return-void
.end method

.method public stopBokehMonitoring()V
    .locals 1

    .line 3526
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3527
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopBokehMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopFaceDetection()V
    .locals 1

    .line 1916
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopFinishBurstMonitoring()V
    .locals 1

    .line 3604
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3605
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFinishBurstMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopFusionMonitoring()V
    .locals 1

    .line 3510
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3511
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFusionMonitoring()V

    return-void
.end method

.method public stopObjectTracking()V
    .locals 1

    .line 3478
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3479
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 2090
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked recording:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2092
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 2093
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    .line 2095
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2096
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2099
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2101
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method public stopPreviewSynchronized()V
    .locals 2

    .line 2110
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked recording:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2111
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopPreviewTaskSynchronized(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1
    return-void
.end method

.method public stopRecording(Z)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3373
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitAllSnapshotDone()V

    .line 3375
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelChangeProviderDeviceStatusToRecording()V

    .line 3376
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 3377
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p1

    .line 3378
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3379
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sendRecordingStopTag()V

    .line 3380
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "post StopRecorderTask"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3381
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask-IA;)V

    .line 3382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3384
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3385
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz p0, :cond_2

    .line 3386
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->getRecordingTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 3390
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3391
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3390
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopSceneRecognition()V
    .locals 2

    .line 1932
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1934
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p0, :cond_1

    .line 1935
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->notifySceneRecognitionDisabled()V

    :cond_1
    return-void
.end method

.method public takeLowLightPicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 2

    .line 2724
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->takeLowLightPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .locals 4

    .line 2537
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked datetaken:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2539
    :cond_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->updateFlashIndicator(Z)V

    .line 2540
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2542
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p0

    return-object p0

    .line 2544
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 2545
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2546
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPredictiveCaptureNum()I

    move-result v0

    .line 2545
    invoke-virtual {p2, v1, p1, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V

    .line 2548
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBurst(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->INVALID:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 2552
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainingCaptureDuration()I

    move-result p1

    .line 2553
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->create(I)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    goto :goto_1

    .line 2550
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 2556
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2557
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnCaptureRequest()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    .line 2560
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p0

    .line 2562
    :cond_5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 2565
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setSSTriggerTag(Z)V

    .line 2566
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne p2, v0, :cond_6

    .line 2567
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->takeNightPortraitCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_2

    .line 2569
    :cond_6
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne p2, v0, :cond_7

    .line 2570
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takeLowLightPicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_2

    .line 2571
    :cond_7
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBurst(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2572
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playShutterSoundIfNeed()V

    .line 2573
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->takeBurstPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_2

    .line 2575
    :cond_8
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne p2, p1, :cond_9

    .line 2576
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->takeHDRPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_2

    .line 2578
    :cond_9
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne p2, p1, :cond_a

    .line 2579
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takeWalkingPicture()V

    goto :goto_2

    .line 2591
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->incrementBGProcessingCount()V

    .line 2592
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->takePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2597
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isSuperNightMode()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2598
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getNightModeRemainingCaptureDuration()I

    move-result p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->create(I)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 2599
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2600
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnCaptureRequest()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_3

    .line 2603
    :cond_b
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 2605
    :cond_c
    :goto_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p0
.end method

.method public takeWalkingPicture()V
    .locals 3

    .line 2924
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2925
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->takeWalkingPicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public triggerRestartPreview(Z)V
    .locals 1

    .line 2060
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    .line 2061
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method public unselectedFaceID()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->unselectedFaceID(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public updateRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Z)V
    .locals 3

    .line 3129
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked recorder-is-ready:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "shutter-sound-requested:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3131
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3132
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 3133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setLocation(Landroid/location/Location;)V

    .line 3134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setOrientationHint(I)V

    .line 3135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setMaxDurationMillis(J)V

    .line 3136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setMaxFileSizeBytes(J)V

    .line 3137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setOutputFilePath(Ljava/lang/String;)V

    .line 3138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    .line 3139
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setUserSoundSetting(Z)V

    :cond_1
    return-void
.end method

.method public updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V
    .locals 0

    .line 3263
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V

    return-void
.end method
