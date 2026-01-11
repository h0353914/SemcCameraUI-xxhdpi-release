.class public Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.super Ljava/lang/Object;
.source "VirtualCameraDevice.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;,
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;,
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;,
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;,
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;,
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;,
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;,
        Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
    }
.end annotation


# static fields
.field private static final OPERATION_MODE_SOMC_CAMERA_BT601:I = 0x8000

.field private static final VIRTUAL_CAMERA_ID:Ljava/lang/String; = "5"


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraHandler:Landroid/os/Handler;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCaptureSize:Landroid/util/Size;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mImageReader:Landroid/media/ImageReader;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPendingCloseCamera:Z

.field private mPendingMediaSize:I

.field private mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSessionStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;

.field private mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraHandler(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureCallback(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSession(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceStateCallback(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mDeviceStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatch(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mListeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnImageAvailableListener(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingCloseCamera(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingCloseCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingMediaSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingMediaSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemindedFinalJpgNum(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionStateCallback(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mSessionStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureSession(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImageReader(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Landroid/media/ImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatch(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingMediaSize(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingMediaSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->changeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPendingProcessingCount(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->clearPendingProcessingCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPendingProcessingMedia(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->clearPendingProcessingMedia()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misStatusOf(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->isStatusOf([Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    .line 51
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xfa0

    const/16 v2, 0xbb8

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mExecutor:Ljava/util/concurrent/Executor;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mListeners:Ljava/util/Set;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mDeviceStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mSessionStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$SessionStateCallback;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingCloseCamera:Z

    .line 139
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 156
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$2;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 359
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mContext:Landroid/content/Context;

    .line 86
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VirtualHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mUiHandler:Landroid/os/Handler;

    .line 89
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;

    .line 90
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    .line 91
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->setOnMediaDequeSizeChangedListener(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;)V

    return-void
.end method

.method private changeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    if-eq v0, p1, :cond_2

    .line 67
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, " to "

    const-string v2, "Change status from "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 68
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Error:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    if-ne p1, v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    :cond_2
    return-void
.end method

.method private clearPendingProcessingCount()V
    .locals 2

    .line 311
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRemindedFinalJpgNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;

    .line 313
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;->clearPendingProcessingCount()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearPendingProcessingMedia()V
    .locals 2

    .line 301
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRemindedFinalJpgNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 304
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;

    .line 305
    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;->clearPendingProcessingMedia(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs isStatusOf([Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .locals 5

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 77
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mStatus:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    if-ne v4, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public capture()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$TakePictureTask-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public close()V
    .locals 3

    .line 128
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close. mRemindedFinalJpgNum: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mRemindedFinalJpgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMediaDeque().size() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingMediaSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 130
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingMediaSize:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingCloseCamera:Z

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CloseCameraTask-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->clearPendingProcessingCount()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingCloseCamera:Z

    :goto_0
    return-void
.end method

.method public declared-synchronized configSurface(Landroid/util/Size;)V
    .locals 3

    const-string v0, "mCaptureSize: "

    monitor-enter p0

    if-nez p1, :cond_0

    .line 104
    :try_start_0
    const-string p1, "can not configure with null size"

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$ConfigSessionTask-IA;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openCamera()V
    .locals 3

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingCloseCamera:Z

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener(Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;)Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
