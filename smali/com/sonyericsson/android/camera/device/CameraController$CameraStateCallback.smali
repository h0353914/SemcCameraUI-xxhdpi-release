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
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    .line 720
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 713
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    .line 714
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    .line 716
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    .line 721
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 p1, 0x0

    .line 722
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    const/4 p1, 0x0

    .line 723
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V
    .locals 0

    .line 709
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->cancelOpenCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 709
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraOpened()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V
    .locals 0

    .line 709
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraClosed()V

    return-void
.end method

.method private cancelOpenCamera()V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v1, 0x0

    .line 756
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_0
    const/4 v1, 0x1

    .line 758
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    .line 759
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
    .locals 4

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 767
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing camera device is timed-out. sessionId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "waitCameraClosed() : Failed to await"

    .line 770
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private waitCameraOpened()Landroid/hardware/camera2/CameraDevice;
    .locals 5

    const/4 v0, 0x1

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening camera device is timed-out. sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "waitCameraOpened() : Failed to await"

    .line 738
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 741
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    .line 743
    iput-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 744
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    .line 745
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 746
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 846
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 847
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const/4 p1, 0x1

    .line 801
    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraStateCallback.onDisconnected() : SessionID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 802
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setCameraEvicted()V

    .line 803
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onSessionDisconnected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 835
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (UNKNOWN). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    :pswitch_0
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_SERVICE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 810
    :pswitch_1
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_DEVICE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :pswitch_2
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_DISABLED). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :pswitch_3
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_MAX_CAMERAS_IN_USE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :pswitch_4
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_IN_USE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 840
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setCameraError()V

    .line 841
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isRequiredToAbandonDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 779
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    goto :goto_0

    .line 782
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 784
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 786
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 789
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 790
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    .line 793
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 796
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

    .line 784
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
