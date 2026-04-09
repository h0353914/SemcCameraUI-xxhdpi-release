.class public Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    }
.end annotation


# static fields
.field static final CLOSE_BYPASS_CAMERA_TIMEOUT_MILLIS:J = 0x186a0L

.field private static final DELAY_STATUS_PROVIDER_UPDATE_UNTIL_RECORDING_STARTED_MILLIS:J = 0xbb8L

.field private static final TIMEOUT_WAIT_FOR_PARAMETERS_TO_BE_REFLECTED_MILLIS:J = 0x1388L

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
.field private mActivityIsInForeground:Z

.field private mApplicationContext:Landroid/content/Context;

.field private mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

.field private mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

.field private mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

.field private final mCameraDeviceThreadHandler:Landroid/os/Handler;

.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private final mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

.field private mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

.field private mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

.field private mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private final mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

.field private mIsCameraDisabled:Z

.field private mIsFpsLimitationEnabled:Z

.field private mIsInShutdownNow:Z

.field private mIsRecording:Ljava/lang/Boolean;

.field private mIsVideo:Z

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field private mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

.field private mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

.field private final mVideoRecorderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;

    .line 543
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sCameraSessionInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 147
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 152
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    .line 164
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    .line 167
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 168
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    .line 171
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v1, 0x0

    .line 174
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    .line 208
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 224
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 239
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    const/4 v2, 0x1

    .line 248
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    .line 250
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    .line 356
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 931
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    .line 2112
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    .line 585
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    .line 588
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "CameraAccess"

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 590
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 591
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    .line 593
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    .line 595
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    .line 596
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 597
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 138
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sCameraSessionInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->dumpStatus(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/BypassCameraController;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isNeedCreatePreviewSession()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnCameraClosed()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    return-object p1
.end method

.method private cancelChangeProviderDeviceStatusToRecording()V
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelCloseBypassCameraTimeoutTask()V
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 979
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    return-void
.end method

.method private changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .locals 4

    .line 210
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-void
.end method

.method private changeProviderDeviceStatusToRecording()V
    .locals 3

    .line 2126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createCameraActionSound()V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createPreCaptureSavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 16

    move-object/from16 v0, p0

    .line 1610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1615
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    if-eqz v3, :cond_0

    .line 1616
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->access$2100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 1622
    iget-object v5, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v5, :cond_1

    .line 1623
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    move-object v4, v0

    .line 1627
    :cond_1
    new-instance v14, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    new-instance v15, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 1632
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1633
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const-string v7, "image/jpeg"

    const-string v8, ".JPG"

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v0, v15

    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    const/4 v1, 0x1

    invoke-direct {v14, v15, v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V

    return-object v14
.end method

.method private dumpStatus(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStateMachine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreProcessState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityIsInForeground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCameraDisabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->dump(Ljava/lang/StringBuilder;)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->dump(Ljava/lang/StringBuilder;)V

    .line 194
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dump(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 0

    .line 800
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isBypassCameraAvailable()Z
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 548
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method private isBypassCameraSupported()Z
    .locals 0

    .line 317
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraSupported()Z

    move-result p0

    return p0
.end method

.method private isNeedCreatePreviewSession()Z
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 263
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

.method private isRecorderReady()Z
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method private releaseCameraActionSound()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseRecorderOnCameraClosed()V
    .locals 2

    .line 2041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2042
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_0

    .line 2043
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->release()Z

    .line 2048
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

.method private requestCloseBypassCameraTimeoutTask(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 2

    .line 988
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    .line 989
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    const-wide/32 v0, 0x186a0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 3269
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 0

    .line 3273
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3276
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->access$800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "runOnCameraDeviceThreadSync() : Failed to await by InterruptedException"

    .line 3278
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setFocusRect(Landroid/graphics/Rect;)V
    .locals 5

    .line 2488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2490
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2494
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 2495
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Focus area change is not supported, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 2500
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked rect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2502
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2503
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusArea()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2504
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 2505
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 2506
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p0, 0x1

    .line 2507
    invoke-virtual {p1, v1, p0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 2509
    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_6
    const-string p0, "user"

    .line 2512
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 2515
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2516
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2517
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    return-void
.end method

.method private setFpsRange([I)V
    .locals 5

    .line 2738
    array-length v0, p1

    if-lez v0, :cond_3

    .line 2739
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2741
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2745
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2749
    :cond_2
    aget v0, p1, v1

    aget p1, p1, v2

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewFpsRange(II)V

    goto :goto_0

    :cond_3
    const-string p0, "Ilegal fps range is specified."

    .line 2753
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 4

    .line 2608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2610
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2613
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked area:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " metering:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2618
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "user"

    .line 2620
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2623
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    .line 2626
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringArea(Ljava/util/List;)V

    return-void
.end method

.method private setPreviewSize(Landroid/graphics/Rect;)V
    .locals 5

    .line 2663
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2665
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2668
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2670
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 2671
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 2672
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p0

    .line 2673
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 2674
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    return-void
.end method


# virtual methods
.method public applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .locals 7

    .line 1647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1649
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1653
    :cond_1
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setRotation(I)V

    .line 1655
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->removeGpsData()V

    .line 1657
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    if-eqz v1, :cond_4

    .line 1658
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1659
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v1, v1, v5

    if-nez v1, :cond_3

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 1669
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setGpsData(Landroid/location/Location;)V

    .line 1673
    :cond_4
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "invoked"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1675
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public autoFocus()V
    .locals 3

    .line 1479
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1481
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 1483
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->createAfParametersResultChecker(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    move-result-object v0

    .line 1485
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAfParametersReflectedToDevice(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshotReady(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_0

    .line 1490
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1491
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->requestSnapshotReadyAfterAfParametersReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Ljava/lang/Runnable;

    move-result-object v0

    .line 1494
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public awaitLoadSettingsThread()Z
    .locals 5

    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "awaitSettingLoadThread thread is unnecessary"

    .line 1086
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1092
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->join(J)V

    .line 1094
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1095
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is Timed out."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is Interrupted."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is Cancelled."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move p0, v0

    .line 1106
    :goto_1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method public canRecorderTakeSnapshot()Z
    .locals 1

    .line 2338
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStarting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2339
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .line 1538
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1540
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshotFree(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1
    return-void
.end method

.method public cancelPreProcessState()V
    .locals 1

    .line 217
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method public captureWhileRecording(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 0

    .line 2246
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method public closeCamera()V
    .locals 1

    const/4 v0, 0x0

    .line 907
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera(Z)V

    return-void
.end method

.method public closeCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 4

    .line 917
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked requested-session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current-session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-ne p1, v0, :cond_1

    .line 920
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    :cond_1
    return-void
.end method

.method public closeCamera(Z)V
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 818
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 827
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    .line 828
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 829
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 839
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    goto :goto_1

    .line 837
    :cond_3
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 847
    :goto_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    or-int/2addr p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 849
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 850
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    const-string v2, "batterymanager"

    .line 851
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    const/4 v2, 0x4

    .line 852
    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    if-nez v1, :cond_4

    move p1, v0

    .line 857
    :cond_4
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked sync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 860
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 862
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 863
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 865
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    if-eqz v0, :cond_7

    .line 866
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->disable()V

    .line 867
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    .line 872
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Camera is waiting for completion of capturing in recording video."

    .line 873
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitAllSnapshotDone()V

    .line 878
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelChangeProviderDeviceStatusToRecording()V

    .line 879
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 881
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_a

    .line 883
    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->stop()V
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 885
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "stopRecording():[Failed to stop MediaRecorder.]"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 889
    :cond_a
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 891
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->closeCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 895
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->closeBypassCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 898
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestCloseBypassCameraTimeoutTask(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 899
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseCameraActionSound()V

    return-void

    :catchall_0
    move-exception p0

    .line 889
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public commit()V
    .locals 4

    .line 2842
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked pre-process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " remain-saving-photo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2842
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2845
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2846
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_3

    .line 2854
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2858
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    :cond_3
    return-void
.end method

.method public disableFpsLimitation()V
    .locals 1

    .line 1143
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1144
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    return-void
.end method

.method public enableFpsLimitation()V
    .locals 3

    .line 1120
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1123
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1127
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1128
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    .line 1129
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxPreviewFps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    .line 1132
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1134
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILjava/util/List;)[I

    move-result-object v0

    .line 1136
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_3
    return-void
.end method

.method public finalizeRecording()V
    .locals 7

    .line 2193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2194
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2196
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2197
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->stop()V
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2202
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->getRecordingTimeMillis()J

    move-result-wide v3

    .line 2203
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoked duration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2207
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->setDuration(J)V

    goto :goto_0

    .line 2200
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "stopRecording():[Failed to stop MediaRecorder.]"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2209
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "Recorder doesn\'t exists, so this request is refused."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2211
    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    .line 2212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public finishBurst()V
    .locals 1

    .line 1727
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestFinishBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;
    .locals 0

    .line 808
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
    .locals 0

    .line 2298
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method public getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .locals 0

    .line 1176
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object p0
.end method

.method public getPreviewRect(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 1373
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1374
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1377
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 1376
    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1380
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    .line 1381
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v1, :cond_1

    .line 1385
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1391
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

    .line 785
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getRemainPrevSavingRequestCount()I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainPrevSavingRequestCount()I

    move-result p0

    return p0
.end method

.method public getRemainSavingPhotoRequestCount()I
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result p0

    return p0
.end method

.method public getSendPauseEventAndReleaseCameraTaskToken()Ljava/lang/Object;
    .locals 0

    .line 271
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;

    return-object p0
.end method

.method public getStreamingImageRetriever()Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 0

    .line 3299
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getStreamingImageRetriever()Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object p0

    return-object p0
.end method

.method public getZoom()Ljava/lang/Float;
    .locals 0

    .line 792
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isBypassCameraNextShotAvailable()Z
    .locals 0

    .line 3099
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isBypassCameraNextShotAvailable()Z

    move-result p0

    return p0
.end method

.method public isCameraDeviceStatusReady()Z
    .locals 1

    .line 1868
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

    .line 1116
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    return p0
.end method

.method public isCameraFront()Z
    .locals 1

    .line 1358
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isObjectTrackingRunning()Z
    .locals 0

    .line 2302
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result p0

    return p0
.end method

.method public isPreCaptureOnGoing()Z
    .locals 2

    .line 1171
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

    .line 1167
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

.method public isRecorderWorking()Z
    .locals 5

    .line 2323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2325
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2326
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2327
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 2330
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked isRecorderWorking() isRecording:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2331
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isPaused:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2332
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isStopping:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2333
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    .line 2330
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v0
.end method

.method public isRecording()Z
    .locals 0

    .line 2315
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSteadyShotSupported()Z
    .locals 3

    .line 2013
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "[getParameters failed] Did not check availability of VideoStabilizer."

    .line 2015
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2018
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 2019
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object p0

    .line 2018
    invoke-virtual {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isValueEnabled(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized openCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 3

    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->openCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 757
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 759
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 760
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 762
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const-string v0, "LoadSettingsThread"

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->setName(Ljava/lang/String;)V

    .line 763
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->setPriority(I)V

    .line 764
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->start()V

    .line 767
    :cond_1
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " quick-launch:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 769
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 753
    monitor-exit p0

    throw p1
.end method

.method public pauseRecording()V
    .locals 1

    .line 2216
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2218
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->pause()V
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 2222
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "pauseRecording():[Failed to pause MediaRecorder.]"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public playShutterSound(I)V
    .locals 5

    .line 297
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(IZ)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-virtual {p0, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(IZ)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public preCapture()V
    .locals 3

    .line 1148
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1156
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createPreCaptureSavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 1159
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_CAPTURE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 1160
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1163
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V

    return-void
.end method

.method public declared-synchronized preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 3

    monitor-enter p0

    .line 664
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Camera is already preloaded."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 666
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    :try_start_1
    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    .line 671
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->access$800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    :try_start_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq p1, v1, :cond_3

    .line 684
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 689
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 690
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    goto :goto_0

    .line 692
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 694
    :goto_0
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 696
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 699
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoked mode:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " fast-capture:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 701
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCloseBypassCameraTimeoutTask()V

    .line 702
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "InitControllerTask is interrupted."

    .line 679
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, 0x0

    .line 680
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 663
    monitor-exit p0

    throw p1
.end method

.method public prepareBurst()V
    .locals 1

    .line 1722
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestPrepareBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public declared-synchronized prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z
    .locals 3

    monitor-enter p0

    .line 715
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckList(Landroid/content/Context;)V

    .line 718
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 720
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string p1, "Use of camera is prohibited by device policy."

    .line 721
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 722
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Camera is disabled, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 723
    :cond_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    monitor-exit p0

    return v1

    .line 726
    :cond_1
    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 728
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 729
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 731
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createCameraActionSound()V

    .line 733
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 734
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1, v0, p3, v1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 736
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCloseBypassCameraTimeoutTask()V

    .line 738
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->initializeCaptureRequest(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 714
    monitor-exit p0

    throw p1
.end method

.method public prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V
    .locals 1

    .line 3088
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3089
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    return-void
.end method

.method public prepareRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 1928
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1929
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Recorder is stopping, so this request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1933
    :cond_1
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1934
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Recorder is already ready, so this request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1939
    :cond_3
    iput-object v1, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 1941
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1943
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1946
    :cond_4
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 1950
    :cond_5
    new-instance v11, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;

    .line 1954
    invoke-virtual/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getProgressInterval()I

    move-result v7

    .line 1956
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v9

    .line 1957
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v10

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;-><init>(Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;IZLjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 1959
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 1961
    new-instance v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;

    invoke-direct {v6, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 1966
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 1972
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    .line 1974
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    .line 1976
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v12

    long-to-int v10, v12

    .line 1977
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameNum(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v12

    long-to-int v12, v12

    move-object v4, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move v11, v12

    .line 1973
    invoke-static/range {v4 .. v11}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 1980
    iget-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-object/from16 v5, p6

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setStorageWriteNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V

    .line 1981
    invoke-virtual/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v0, "prepareRecorder() : CamcorderProfile is null."

    .line 1983
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1984
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CamcorderProfile is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    :cond_6
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_7

    .line 1991
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->isAudioPolicyActive(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v8

    goto :goto_0

    :cond_7
    move v5, v7

    .line 1993
    :goto_0
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_8

    new-array v6, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invoked uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " audio-record-enabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1996
    :cond_8
    new-instance v6, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    invoke-direct {v6, v2, v4}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;-><init>(Landroid/net/Uri;Landroid/media/CamcorderProfile;)V

    iget-object v2, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 1997
    invoke-virtual {v6, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setLocation(Landroid/location/Location;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v2

    iget-object v4, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v9, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v4, v9

    .line 1998
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMaxDuration(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v2

    iget-object v4, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v9, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    .line 1999
    invoke-virtual {v2, v9, v10}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMaxFileSize(J)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v2

    .line 2000
    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMicrophoneEnabled(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v2

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 2001
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setOrientationHint(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v1

    .line 2002
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v2, v3, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {v1, v7}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setHdr(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v1

    move-object/from16 v2, p5

    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    .line 2003
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v1

    .line 2004
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    move-result-object v1

    .line 2005
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "prepareRecorder() : Failed to prepare MediaRecorder."

    .line 2006
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 2008
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "prepareRecorder():[Failed to prepare MediaRecorder.]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method public releaseRecorder()V
    .locals 2

    .line 2027
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_1

    .line 2030
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->release()Z

    const/4 v1, 0x0

    .line 2031
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2033
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseVideo()V
    .locals 1

    .line 2240
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2242
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    return-void
.end method

.method public removeOnPreviewStartedListener()V
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->removeOnPreviewStartedListener()V

    return-void
.end method

.method public requestOnePreviewFrame()V
    .locals 2

    .line 2253
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->requestOnePreviewFrame(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 5

    .line 2469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2471
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2474
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 2476
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getFocusArea()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 2478
    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFocusRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resetFocusModeAndCommit()V
    .locals 5

    .line 1817
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1819
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1824
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1826
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Focus position change is not supported, so this request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1830
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked current-focus-mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    const-string v1, "manual"

    .line 1832
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1836
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 1835
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultFocusModeForFastCapturePhoto(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v1

    .line 1834
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    :cond_5
    const-string v1, "center"

    .line 1840
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1841
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 1843
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .line 2227
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2230
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2231
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->resume()V

    .line 2232
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->incrementCountRecordResume()V
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 2235
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "resumeRecording():[Failed to resume MediaRecorder.]"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V
    .locals 4

    .line 3053
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3055
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3058
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onde-shot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " preview-size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3058
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3062
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    .line 3065
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setPreviewSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3066
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p3, p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 3067
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public setActivityForeground(Z)V
    .locals 0

    .line 3013
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    return-void
.end method

.method public setAmberBlueColorAndCommit(I)V
    .locals 4

    .line 1185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1187
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1191
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAwbColorCompensationAb(I)V

    .line 1193
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1195
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setBrightnessAndCommit(I)V
    .locals 4

    .line 1207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1209
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1212
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureCompensation(I)V

    .line 1214
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1216
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 5

    .line 2863
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2867
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 2871
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 2872
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 2873
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 2876
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object p1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p1, v2, :cond_4

    .line 2878
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    :cond_4
    const/4 p1, 0x0

    .line 2881
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 2883
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez p1, :cond_5

    .line 2885
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 2886
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxPreviewFps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v0

    .line 2887
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v2

    .line 2885
    invoke-static {p1, v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILjava/util/List;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    .line 2893
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method public setDisplayFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V
    .locals 4

    .line 1260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1265
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1267
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Display flash is not supported, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1271
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1278
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 1279
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1280
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 1282
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1283
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    return-void

    .line 1273
    :cond_6
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setDisplayFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V
    .locals 4

    .line 1306
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1311
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1312
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisplayFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    .line 1313
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setDistortionCorrection(Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;)V
    .locals 5

    .line 2991
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2993
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2996
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2999
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz p0, :cond_4

    .line 3001
    :cond_3
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 3004
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setDistortionCorrection(Ljava/lang/String;)V

    return-void
.end method

.method public setEv(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V
    .locals 4

    .line 2424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2426
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2429
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2430
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->getIntValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureCompensation(I)V

    return-void
.end method

.method public setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 5

    .line 1224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1226
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1230
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1232
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Display flash is supported, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1236
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v1

    .line 1237
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1238
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 1241
    :cond_4
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1242
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 1245
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    const-string v0, "torch"

    .line 1247
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    .line 1246
    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1252
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void
.end method

.method public setFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 1

    .line 1291
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1298
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    .line 1293
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
    .locals 5

    .line 2441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2443
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2446
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2448
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_3

    .line 2449
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValueForVideo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2451
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 2455
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Camera focus isn\'t supported. FocusArea is not set."

    .line 2456
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 2459
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 2463
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 2464
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    :cond_5
    return-void
.end method

.method public setFocusPositionAndCommit(Landroid/graphics/Rect;)V
    .locals 6

    .line 1789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1791
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1796
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1798
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Focus position change is not supported, so this request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1803
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const-string v3, "user"

    .line 1806
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 1807
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoked rect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1809
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1811
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 1813
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setFocusRange(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;)V
    .locals 5

    .line 2930
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2932
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2935
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " focus-mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2935
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2939
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_3

    return-void

    .line 2943
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne p1, v1, :cond_5

    .line 2944
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "continuous-picture"

    .line 2945
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p0, "fixed"

    .line 2947
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    const-string v1, "manual"

    .line 2953
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2954
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    :cond_6
    const-string p0, "manual"

    .line 2957
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    const-string p0, "center"

    .line 2958
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2959
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 2960
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne p0, p1, :cond_7

    .line 2962
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_1M:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRange(F)V

    goto :goto_1

    .line 2964
    :cond_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->getFocusRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p0

    .line 2965
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRange(F)V

    :goto_1
    return-void
.end method

.method public setFusionMode(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .locals 4

    .line 2975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2977
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2980
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2982
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFusionMode(Ljava/lang/String;)V

    return-void
.end method

.method public setHdr(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 4

    .line 2521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2523
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2526
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2528
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setStillHdr(Ljava/lang/String;)V

    return-void
.end method

.method public setIsInShutdownNow(Z)V
    .locals 0

    .line 3017
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    return-void
.end method

.method public setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 6

    .line 2532
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2534
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2538
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shutter-speed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2538
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2540
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setIso(I)V

    .line 2543
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-ne p1, v1, :cond_4

    .line 2544
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanoMillis()J

    move-result-wide p0

    .line 2545
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v1

    cmp-long p0, p0, v1

    if-nez p0, :cond_3

    const-string p0, "auto"

    .line 2546
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "shutter-prio"

    .line 2548
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2551
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanoMillis()J

    move-result-wide v1

    .line 2552
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_5

    const-string p0, "iso-prio"

    .line 2553
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2557
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedAeModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    const-string v1, "semi-auto"

    .line 2558
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "semi-auto"

    .line 2559
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2561
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setShutterSpeed(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V

    :goto_0
    return-void
.end method

.method public setLowPower()V
    .locals 2

    .line 2359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2361
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2364
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "invoked"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const-string v1, "low"

    .line 2365
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPowerMode(Ljava/lang/String;)V

    .line 2366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 5

    .line 2568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2570
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2574
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2575
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2578
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    return-void
.end method

.method public setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 4

    .line 2590
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2594
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2597
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 2598
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    return-void
.end method

.method public setPredictiveCapture(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .locals 2

    .line 2381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2383
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2388
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAlwaysPredictiveCaptureEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "PredictiveCapture setting has been overwritten by DebugParameterUtils."

    .line 2389
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 2390
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 2392
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPredictiveCapture(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPredictiveCaptureNum(I)V

    return-void
.end method

.method public setPredictiveCaptureAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .locals 5

    .line 2397
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2400
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    .line 2401
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2402
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PredictiveCapture setting was changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2402
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2408
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPredictiveCapture(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    .line 2409
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 4

    .line 2717
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " video-size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2719
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p3, v0, :cond_1

    .line 2720
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 2722
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2723
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2727
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 2730
    invoke-static {p2, p3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p2

    .line 2731
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p3

    .line 2729
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILjava/util/List;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    return-void

    .line 2733
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 4

    .line 1425
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setSurface(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLandroid/view/Surface;)V

    return-void
.end method

.method public setResolution(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 5

    .line 2630
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2632
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2635
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prev-resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2635
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2639
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 2642
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v1, :cond_3

    .line 2643
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 2647
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2648
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2647
    invoke-virtual {v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2649
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v1, :cond_4

    .line 2650
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 2651
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSize(Landroid/graphics/Rect;)V

    return-void

    .line 2653
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setSelectedFacePosition(II)V
    .locals 4

    .line 1738
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1741
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1745
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1746
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusModeAndCommit()V

    .line 1747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setSelectedFacePosition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;II)V

    goto :goto_0

    :cond_3
    const-string p0, "Face detection is not available."

    .line 1750
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setShutterSpeed(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V
    .locals 5

    .line 2897
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2899
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2902
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "iso:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2904
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanoMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setShutterSpeed(J)V

    .line 2907
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-ne p1, v1, :cond_4

    .line 2908
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result p1

    if-ne p0, p1, :cond_3

    const-string p0, "auto"

    .line 2909
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "iso-prio"

    .line 2911
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2914
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v1

    if-ne p1, v1, :cond_5

    const-string p0, "shutter-prio"

    .line 2915
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2919
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedAeModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    const-string v1, "semi-auto"

    .line 2920
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "semi-auto"

    .line 2921
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2923
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    :goto_0
    return-void
.end method

.method public setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .locals 4

    .line 1402
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 1405
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V

    .line 1406
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_1
    return-void
.end method

.method public setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 5

    .line 2805
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2807
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2810
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2812
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    if-ne v1, p1, :cond_3

    return-void

    .line 2816
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_4

    .line 2817
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 2820
    :cond_4
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 2821
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 2832
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide p0

    .line 2831
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureTimeLimit(J)V

    goto :goto_0

    :pswitch_0
    const-wide p0, 0x41cdcd6500000000L    # 1.0E9

    .line 2825
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 2826
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    .line 2825
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr p0, v1

    .line 2824
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureTimeLimit(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSoftSkin(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V
    .locals 5

    .line 2678
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2685
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2687
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 2690
    :cond_2
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_3

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2693
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)I

    move-result p0

    .line 2692
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSoftSkin(I)V

    return-void

    .line 2679
    :cond_4
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_5

    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This request was refused. video:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cameraId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2681
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    .line 2679
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 4

    .line 1411
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked prev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1412
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1413
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p1, :cond_1

    .line 1414
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

    :cond_1
    return-void
.end method

.method public setTorchAndCommit(Z)V
    .locals 4

    .line 2347
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2353
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 2354
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 2355
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    .line 2349
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

    .line 2370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2372
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2375
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "invoked"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const-string v1, "ultra-low"

    .line 2376
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPowerMode(Ljava/lang/String;)V

    .line 2377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 5

    .line 3021
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3023
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3026
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3028
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v1

    if-eq v1, p1, :cond_3

    .line 3029
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 3030
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 3031
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_3
    return-void
.end method

.method public setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "Ilegal video size is specified."

    .line 2764
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 2768
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2770
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 2773
    :cond_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2776
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    if-eq v1, p1, :cond_4

    .line 2777
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_4

    .line 2778
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 2784
    :cond_4
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 2785
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_5

    .line 2786
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    :cond_5
    return-void
.end method

.method public setVideoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V
    .locals 5

    .line 2697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2699
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2702
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2704
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2705
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_3

    .line 2706
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 2712
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    return-void
.end method

.method public setWhiteBalance(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V
    .locals 4

    .line 2791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2793
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "This session has been closed, so this request was refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2796
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2798
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1767
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setZoom(F)V

    return-void
.end method

.method public setZoomAndCommit(F)V
    .locals 0

    .line 1779
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 1780
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 1320
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public startFusionMonitoring()V
    .locals 1

    .line 2280
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2281
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startFusionMonitoring(Landroid/os/Handler;)V

    return-void
.end method

.method public startObjectTracking(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V
    .locals 4

    .line 2264
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->startObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 1434
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method public startRecording()V
    .locals 5

    .line 2052
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 2056
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v2, :cond_1

    .line 2058
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->start()V

    .line 2059
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    .line 2061
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2101
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changeProviderDeviceStatusToRecording()V

    return-void

    :catchall_0
    move-exception v2

    .line 2061
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "mMediaRecorder.start() fail."

    .line 2063
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2066
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseVideo()V

    .line 2069
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2070
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq v2, v3, :cond_2

    .line 2073
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2075
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "videoFile.delete(): [Unable to delete empty video file.]"

    .line 2076
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "startRecording: [Unable to delete empty media file.]"

    .line 2081
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 2084
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 2085
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 2084
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->searchDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2088
    :try_start_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    .line 2089
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 2091
    new-array p0, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDocument: [delete failed.]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v0, "deleteDocument: [occurred Exception.]"

    .line 2094
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2099
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public startSceneRecognition()V
    .locals 2

    .line 1336
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->startSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public startSuperSlowMotion()V
    .locals 4

    .line 2141
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    if-nez v0, :cond_1

    .line 2143
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Current recorder doesn\'t support slow motion"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2147
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    check-cast p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startSuperSlow()Z
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 2149
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSuperSlowMotion() failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAudioRecording()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v0, :cond_0

    .line 280
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->stopAudioRecording()V

    :cond_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 1

    .line 1328
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopFusionMonitoring()V
    .locals 1

    .line 2288
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2289
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFusionMonitoring()V

    return-void
.end method

.method public stopObjectTracking()V
    .locals 1

    .line 2272
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2273
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopPreview()V
    .locals 4

    .line 1444
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1446
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 1447
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    .line 1449
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1453
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1455
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method public stopPreviewSynchronized()V
    .locals 4

    .line 1464
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopPreviewTaskSynchronized(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1
    return-void
.end method

.method public stopRecording(Z)Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitAllSnapshotDone()V

    .line 2160
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelChangeProviderDeviceStatusToRecording()V

    .line 2161
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 2162
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 2163
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 2164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_3

    .line 2166
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked capturing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " recording:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2167
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " paused:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2168
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 2166
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2170
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 2172
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->stop()V

    .line 2173
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->getRecordingTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    .line 2176
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "stopRecording():[Failed to stop MediaRecorder.]"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2181
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Recorder doesn\'t exists, so this request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2183
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2185
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2183
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public stopSceneRecognition()V
    .locals 1

    .line 1344
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 5

    .line 1679
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked datetaken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getDateTaken()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1685
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1686
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1687
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPredictiveCaptureNum()I

    move-result v0

    .line 1686
    invoke-virtual {v1, p0, p1, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V

    :cond_2
    return-void
.end method

.method public updateRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Z)V
    .locals 4

    .line 1888
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked recorder-is-ready:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "shutter-sound-requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1890
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 1892
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setLocation(Landroid/location/Location;)V

    .line 1893
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setOrientationHint(I)V

    .line 1894
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setMaxDurationMillis(J)V

    .line 1895
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setMaxFileSizeBytes(J)V

    .line 1896
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setOutputFilePath(Ljava/lang/String;)V

    .line 1897
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setUserSoundSetting(Z)V

    :cond_1
    return-void
.end method
