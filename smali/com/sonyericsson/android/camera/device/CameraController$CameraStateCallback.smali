.class Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallback"
.end annotation


# static fields
.field private static final OPEN_CLOSE_WAIT_TIME_MILLIS:I = 0x3e8


# instance fields
.field private final mCameraDeviceLock:Ljava/lang/Object;

.field private mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDevice:Landroid/hardware/camera2/CameraDevice;

.field private mIsRequiredToAbandonDevice:Z

.field private mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method static bridge synthetic -$$Nest$mcancelOpenCamera(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->cancelOpenCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwaitCameraClosed(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraClosed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwaitCameraOpened(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraOpened()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    .line 3076
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 3069
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3070
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3072
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    .line 3077
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 p1, 0x0

    .line 3078
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    const/4 p1, 0x0

    .line 3079
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private cancelOpenCamera()V
    .locals 2

    .line 3109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3110
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    .line 3111
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v1, 0x0

    .line 3112
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_0
    const/4 v1, 0x1

    .line 3114
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    .line 3115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private waitCameraClosed()V
    .locals 5

    const-string v0, "Closing camera device is timed-out. sessionId:"

    .line 3120
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3123
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3126
    const-string/jumbo v0, "waitCameraClosed() : Failed to await"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private waitCameraOpened()Landroid/hardware/camera2/CameraDevice;
    .locals 6

    const-string v0, "Opening camera device is timed-out. sessionId:"

    const/4 v1, 0x1

    .line 3088
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3091
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3094
    const-string/jumbo v2, "waitCameraOpened() : Failed to await"

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3097
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3098
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    .line 3099
    iput-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 3100
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    .line 3101
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 3102
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 3203
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invoked sessionId:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3204
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 3158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CameraStateCallback.onDisconnected() : SessionID = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3159
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setCameraEvicted()V

    .line 3160
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onSessionDisconnected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    const/4 p1, 0x1

    .line 3165
    const-string v0, "onError is called. Error:"

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 3192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (UNKNOWN). SessionID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3182
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_SERVICE). SessionID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3167
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_DEVICE). SessionID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 3172
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_DISABLED). SessionID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 3187
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (CameraStateCallback.ERROR_MAX_CAMERAS_IN_USE). SessionID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 3177
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_IN_USE). SessionID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3197
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setCameraError()V

    .line 3198
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    const-string v0, "invoked sessionId:"

    .line 3132
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3133
    :try_start_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isRequiredToAbandonDevice:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3135
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    if-eqz v0, :cond_1

    .line 3136
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    goto :goto_0

    .line 3138
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 3140
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3142
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onCameraOpened()V

    .line 3143
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3146
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3147
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    if-eqz v0, :cond_2

    .line 3148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 3149
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    .line 3150
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 3153
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 3140
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
