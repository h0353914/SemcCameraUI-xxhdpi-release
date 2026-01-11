.class Lcom/sonyericsson/android/camera/device/BypassCameraController;
.super Ljava/lang/Object;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestFinishBurstShotTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotFreeTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SetConfigTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotFreeCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;
    }
.end annotation


# static fields
.field private static final BYPASSCAMERA_IMAGE_READER_BUFFER_NUM:I = 0x1

.field private static final BYPASSCAMERA_MIN_CAPTURE_BUFFER_NUM:I = 0x2

.field private static final BYPASS_CAMERA_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0

.field private static final CLOSE_BYPASS_CAMERA_TASK_WAKE_LOCK_TAG:Ljava/lang/String; = "CameraApp"

.field private static final IMAGE_READER_PREPARED_WAIT_TIME_MILLIS:J = 0x3e8L

.field private static final THREAD_NAME:Ljava/lang/String; = "BypassCamera"

.field private static final TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS_REC:J = 0xbb8L


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private volatile mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

.field private mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

.field private mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

.field private final mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

.field private volatile mCaptureImageReader:Landroid/media/ImageReader;

.field private mCapturingBufferNum:I

.field private mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

.field private mImageReaderHandler:Landroid/os/Handler;

.field private volatile mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mImageReaderPreparedLockObject:Ljava/lang/Object;

.field private mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mImageReaderReadyLockObject:Ljava/lang/Object;

.field private mIsApplyBypassCameraModeRequired:Z

.field private mIsSnapshotReady:Z

.field private mIsSnapshotReadyWaiting:Z

.field private mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field private volatile mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

.field private final mRemainRequestQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavingPhotoRequestQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

.field private mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

.field private mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

.field private mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

.field private final mWaitForSnapshotReadyLockObject:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBypassCameraParameters(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageReaderHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageReaderPreparedLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageReaderPreparedLockObject(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageReaderReadyLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageReaderReadyLockObject(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSnapshotReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevCaptureImageReaderRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemainRequestQueue(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSavingPhotoRequestQueue(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnapshotCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitForAllSnapshotLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitForSnapshotReadyLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBypassCameraParameters(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCaptureImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/media/ImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCapturingBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImageReaderPreparedLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImageReaderReadyLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSnapshotReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrevCaptureImageReaderRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSnapshotCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitForAllSnapshotLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitForSnapshotReadyLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$mawaitImageReaderPrepared(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderPrepared()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mawaitImageReaderReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSnapshotReadyCountDownLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSnapshotReadyCountDownLatch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdequeueSavingPhotoRequestAndAttachImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/media/ImageReader;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dequeueSavingPhotoRequestAndAttachImageReader(Landroid/media/ImageReader;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpRequestQueueStatus(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinalizeCaptureImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinalizeCaptureImageReaderInternal(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReaderInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVideoMode(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getVideoMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleTimeout(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->handleTimeout(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreloadSettings(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->preloadSettings(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseCloseBypassCameraWakeLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->releaseCloseBypassCameraWakeLock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestPrepareSnapshot(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestPrepareSnapshot(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSnapshotReadyWaiting(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->setSnapshotReadyWaiting(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->toAndroidUtilSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munlockImageReaderReadyLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->unlockImageReaderReadyLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .locals 3

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    .line 122
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    .line 123
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    .line 124
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

    .line 125
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    const/4 v2, -0x1

    .line 164
    iput v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    .line 166
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 209
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    .line 221
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mApplicationContext:Landroid/content/Context;

    .line 252
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    .line 253
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 255
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ImageReader"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    .line 259
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    .line 260
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    .line 262
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    .line 263
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    .line 264
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLockObject:Ljava/lang/Object;

    .line 266
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 267
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    return-void
.end method

.method private acquireCloseBypassCameraWakeLock()V
    .locals 3

    .line 767
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 768
    const-string p0, "Application context is not set. So wake lock could not be acquired for closing camera."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 775
    const-string v2, "CameraApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 778
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0x186a0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private awaitAllSnapshot()V
    .locals 3

    .line 1492
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "awaitAllSnapshot() Waiting to complete all snapshots. count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 1494
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1496
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 1499
    new-array p0, v1, [Ljava/lang/String;

    const-string v1, "awaitAllSnapshot() snapshots done are completed"

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_0
    new-array p0, v1, [Ljava/lang/String;

    const-string v1, "awaitAllSnapshot: Timeout of waiting all snapshots done."

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1505
    :catch_0
    const-string p0, "awaitAllSnapshot Intercept waiting request done."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private awaitImageReaderPrepared()V
    .locals 3

    .line 1755
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1756
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1757
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1761
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1763
    const-string v0, "Waiting ImageReader Prepared is interrupted."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 1757
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private awaitImageReaderReady()V
    .locals 2

    .line 1783
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1784
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1785
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1789
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting ImageReader ready is interrupted. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 1785
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private changeBypassCameraModeAccordingToCurrentSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 1330
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1334
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoked required:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1335
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1336
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preProcessState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1338
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1339
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " picture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1340
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1334
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1342
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 1346
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1350
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1351
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1353
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_4

    return-void

    .line 1360
    :cond_4
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    if-nez v0, :cond_5

    return-void

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    const/4 p1, 0x0

    .line 1366
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    return-void
.end method

.method private createSavingPhotoRemainCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 5

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 536
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0

    return-object p0

    .line 539
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 542
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 544
    :cond_2
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 545
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    add-int/2addr v2, p0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private createSnapshotReadyCountDownLatch()V
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    if-eqz v1, :cond_0

    .line 729
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    .line 731
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

.method private dequeueSavingPhotoRequestAndAttachImageReader(Landroid/media/ImageReader;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v1, :cond_0

    .line 631
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl-IA;)V

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V

    .line 635
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 637
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 638
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpRequestQueueStatus()Ljava/lang/String;
    .locals 2

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requests ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 524
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private finalizeCaptureImageReader()V
    .locals 2

    .line 1737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized finalizeCaptureImageReaderInternal()V
    .locals 2

    monitor-enter p0

    .line 1746
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 1749
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private getVideoMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .locals 2

    .line 793
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    if-eqz p2, :cond_2

    .line 797
    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    goto :goto_0

    .line 801
    :cond_1
    const-string v0, "intelligent_active"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 802
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->INTELLIGENTACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 806
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 808
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p3, p1, :cond_4

    .line 809
    sget-object p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    if-ne p0, p1, :cond_3

    .line 810
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR_STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    goto :goto_1

    .line 812
    :cond_3
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    :cond_4
    :goto_1
    return-object p0
.end method

.method private handleTimeout(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1543
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    .line 1544
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 1545
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1546
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setOtherError()V

    return-void
.end method

.method private isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private isModified(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private static makeCountDownLatchInfo(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private preloadSettings(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 281
    const-string v5, " modified:true"

    const-string v6, " picture:"

    const-string v7, " vs:"

    const-string v8, " preview:"

    const-string v9, " video:"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_7

    .line 288
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-nez v1, :cond_0

    .line 291
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 294
    :cond_0
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v12}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 296
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v12}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 298
    iget-object v12, v0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 299
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v13

    const/16 v17, 0x1

    move-object v15, v1

    move-object/from16 v16, v2

    .line 298
    invoke-virtual/range {v12 .. v17}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object v0

    .line 301
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v2, v12, :cond_1

    .line 303
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v12

    .line 302
    invoke-static {v12}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v12

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v12

    .line 305
    invoke-static {v12}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v12

    .line 307
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-nez v13, :cond_3

    .line 309
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-static {v12}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getVideoPreviewSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    .line 312
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 314
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v14

    invoke-static {v14}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v14

    .line 311
    invoke-static {v13, v12, v14}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v12

    :goto_0
    move-object/from16 v20, v11

    move-object v11, v1

    move-object/from16 v1, v20

    goto :goto_1

    .line 323
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-nez v0, :cond_5

    .line 325
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    .line 329
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 328
    invoke-static {v1, v2, v12}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    .line 331
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v1, v0

    move-object v0, v11

    move-object v2, v0

    .line 334
    :goto_1
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 335
    invoke-virtual {v4, v12}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 338
    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 340
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load settings from user settings. mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return v10

    :cond_7
    if-eqz v1, :cond_16

    .line 352
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    const-string v5, ""

    if-eqz v2, :cond_10

    .line 353
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 355
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v13

    .line 354
    invoke-static {v13, v3, v5}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 357
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v14, v11}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 359
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 361
    invoke-virtual {v14, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 364
    :cond_8
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 366
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 368
    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v14

    .line 367
    invoke-static {v14, v3, v5}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v14, v11}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 372
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 375
    invoke-virtual {v14, v13}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 377
    :cond_9
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 379
    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 380
    new-instance v15, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v15, v11}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 382
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 384
    invoke-virtual {v15, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 386
    :cond_a
    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-nez v2, :cond_b

    .line 392
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    .line 391
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    :cond_b
    if-nez v13, :cond_c

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 400
    invoke-static {v5, v3, v2, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getRecommendedVideoStabilizerValue(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v13

    goto :goto_2

    .line 402
    :cond_c
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-eq v13, v5, :cond_d

    .line 403
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    :cond_d
    :goto_2
    move-object/from16 v16, v13

    .line 407
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v5, :cond_e

    .line 409
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_3

    .line 412
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v12

    .line 413
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 412
    invoke-static {v5, v12, v13}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 416
    :goto_3
    iget-object v14, v0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 417
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v15

    const/16 v19, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    .line 416
    invoke-virtual/range {v14 .. v19}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object v12

    .line 419
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v13

    invoke-direct {v0, v13, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 420
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 421
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v0, v13, v5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 422
    :cond_f
    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 423
    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 424
    invoke-virtual {v4, v12}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 426
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    goto :goto_5

    .line 431
    :cond_10
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 432
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v12

    invoke-static {v12, v3, v5}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 435
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v12, v11}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 437
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 439
    invoke-virtual {v12, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 442
    :cond_11
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-nez v1, :cond_12

    .line 444
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    .line 447
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v5

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 446
    invoke-static {v2, v5, v12}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 449
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v0, v5, v12}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 450
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4

    :cond_13
    const/4 v10, 0x0

    goto :goto_5

    .line 451
    :cond_14
    :goto_4
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 452
    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 453
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 455
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 460
    :goto_5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load settings from shared-preference. mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " modified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return v10

    .line 470
    :cond_16
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 472
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 471
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 475
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v12

    .line 474
    invoke-static {v2, v3, v1, v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getRecommendedVideoStabilizerValue(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v14

    .line 476
    iget-object v12, v0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 477
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v16

    const/16 v17, 0x1

    move-object v15, v1

    .line 476
    invoke-virtual/range {v12 .. v17}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 479
    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 480
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 482
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 484
    :cond_17
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v2

    .line 485
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 487
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v4, v11}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 491
    :goto_6
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load settings from camera device. mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 494
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 495
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_18
    return v10
.end method

.method private prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8

    .line 1630
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_4

    .line 1632
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$misSameRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1633
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Same ImageReader has bean already requested"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1635
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1637
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1638
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;->onInitialized()V

    :cond_2
    return-void

    .line 1643
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageReader may be changed to: buffNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fgetmImageReaderBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fgetmCapturingBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1645
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fgetmCaptureSize(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1643
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1648
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 1650
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fgetmCapturingBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    .line 1651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    new-instance v7, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseCloseBypassCameraWakeLock()V
    .locals 0

    .line 782
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    .line 783
    const-string p0, "Wake lock is not created correctly."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private requestPrepareSnapshot(I)V
    .locals 9

    const-string v0, "countDown ImageReaderPreparedLatch to "

    const-string v1, "countDown ImageReaderPreparedLatch to "

    const-string v2, "countDown ImageReaderPreparedLatch to "

    const-string v3, "requestPrepareSnapshot() totalBufNumber:"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1717
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v8, :cond_1

    .line 1726
    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter v8

    .line 1727
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 1728
    new-array p1, v7, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1729
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    .line 1728
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1730
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1732
    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1720
    :cond_1
    :try_start_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-array v1, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1722
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 1723
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 1722
    invoke-virtual {v1, v3, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareSnapshot(Landroid/view/Surface;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1726
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter p1

    .line 1727
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3

    .line 1728
    new-array v1, v7, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1729
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 1728
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1730
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1732
    :cond_3
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p1

    .line 1726
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1727
    :try_start_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_4

    .line 1728
    new-array v1, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1729
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1728
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1730
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1732
    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1733
    throw p1

    :catchall_3
    move-exception p0

    .line 1732
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method private setSnapshotReadyWaiting(Z)V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    if-nez p1, :cond_0

    .line 738
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_0

    .line 739
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 742
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

.method private toAndroidUtilSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 1

    .line 1992
    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private unlockImageReaderReadyLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1801
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1802
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, p1, :cond_1

    const/4 p1, 0x0

    .line 1803
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1805
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


# virtual methods
.method awaitAllSnapshotDone()V
    .locals 1

    .line 1485
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSavingPhotoRemainCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 1486
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitAllSnapshot()V

    return-void
.end method

.method closeBypassCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 1846
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    .line 1848
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 1851
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSavingPhotoRemainCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 1852
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1858
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 1861
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    .line 1862
    new-instance v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p0, v2, p2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask-IA;)V

    goto :goto_0

    .line 1864
    :cond_2
    new-instance v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;

    invoke-direct {v0, p0, p2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask-IA;)V

    .line 1868
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->acquireCloseBypassCameraWakeLock()V

    if-eqz p1, :cond_3

    .line 1871
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_1

    .line 1873
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_1
    return-void
.end method

.method commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1951
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderReady()V

    .line 1952
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->changeBypassCameraModeAccordingToCurrentSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 1956
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$SetConfigTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SetConfigTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$SetConfigTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBypassCamera:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitForAllSnapshotLock"

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->makeCountDownLatchInfo(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageReaderReadyLatch"

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->makeCountDownLatchInfo(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mRemainRequestQueue:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mSavingPhotoRequestQueue:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mIsSnapshotReadyWaiting:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mCapturingBufferNum:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mPreCaptureResult:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 553
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 554
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

.method getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, 0x0

    .line 751
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object v0
.end method

.method getBypassCameraInstance()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .locals 0

    .line 1879
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object p0
.end method

.method getRemainPrevSavingRequestCount()I
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 701
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v3, :cond_0

    .line 703
    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 710
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    if-eqz v2, :cond_2

    .line 712
    iget-boolean v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 718
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getRemainSavingPhotoRequestCount()I
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 689
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 691
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method isBypassCameraNextShotAvailable()Z
    .locals 1

    .line 1775
    iget v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result p0

    sub-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isSnapshotRunning()Z
    .locals 5

    .line 681
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 682
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 683
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    if-lez p0, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 684
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 11

    .line 1811
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1826
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;-><init>()V

    .line 1828
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;-><init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1829
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 1830
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->addOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)V

    .line 1835
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraInfo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/device/CameraInfo;)V

    .line 1837
    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v10, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask-IA;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-object v0

    .line 1815
    :cond_1
    :goto_0
    const-string p0, "BypassCameraController.openBypassCamera() is rejected because PlatformCapability is not ready."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method peekLastSavingPhotoRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 4

    .line 673
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 675
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 676
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 677
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V
    .locals 10

    .line 1519
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1521
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "This session has been closed, so this request was refused. sessionId:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1527
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1528
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 1530
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 1533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v9, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1537
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 1536
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v8, 0x0

    const/4 v4, 0x1

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask-IA;)V

    .line 1533
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestApplyBypassCameraMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1996
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    return-void
.end method

.method requestFinishBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestFinishBurstShotTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestFinishBurstShotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestFinishBurstShotTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestPrepareBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V
    .locals 9

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 581
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 585
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->create(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    .line 587
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 588
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    if-eqz v2, :cond_2

    .line 589
    iget v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 590
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 591
    sget-object p3, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 592
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;ILcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask-IA;)V

    invoke-virtual {p3, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 594
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 597
    new-array p1, p1, [Ljava/lang/String;

    const-string p3, "requestSnapshot() mBypassCamera == null"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 599
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    .line 603
    iget-object p2, p2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p2, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p2, p3, :cond_3

    .line 604
    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_1

    .line 605
    :cond_3
    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    :goto_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 602
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 606
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_0
    move-exception p0

    .line 599
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method requestSnapshotFree(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 1918
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotFreeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotFreeTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotFreeTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestSnapshotReady(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 3

    .line 1883
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method setPreCaptureResult(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-void
.end method
