.class Lcom/sonyericsson/android/camera/device/BypassCameraController$1;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

.field final synthetic val$currentSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic val$imageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$needToFinalize:Z

.field final synthetic val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Z)V
    .locals 0

    .line 1608
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$currentSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$imageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$needToFinalize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1611
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4800(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$currentSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1615
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    .line 1616
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 1617
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1618
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4700(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1628
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Same ImageReader has bean already initialized"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$imageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V

    .line 1631
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4300(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1632
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4300(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;->onInitialized()V

    :cond_2
    return-void

    .line 1637
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$5000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1638
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$5100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1639
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$5100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_6

    .line 1640
    :cond_4
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "Latch ImageReaderPrepared."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1641
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$5102(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1643
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3402(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1647
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$needToFinalize:Z

    if-eqz v0, :cond_7

    .line 1648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$5200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1651
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1652
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4200(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4200(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/16 v3, 0x100

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1653
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4000(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v4

    .line 1651
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$602(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 1654
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1655
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$5300(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/os/Handler;

    move-result-object v2

    .line 1654
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1658
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4100(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1659
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4000(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1660
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1661
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$5400(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)V

    .line 1662
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 1663
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$imageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V

    .line 1664
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4300(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1665
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$request:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4300(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;->onInitialized()V

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    .line 1643
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1619
    :cond_9
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "Skip creating ImageReader. BypassCamera would be closed."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1621
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;->val$imageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
