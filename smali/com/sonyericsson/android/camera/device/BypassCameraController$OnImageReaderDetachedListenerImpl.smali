.class Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageReaderDetachedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onDetached(Landroid/media/ImageReader;)V
    .locals 6

    const-string v0, "IMAGE_FPS_MONITOR:"

    const-string v1, "SHUTTER_FPS_MONITOR:"

    .line 644
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmSavingPhotoRequestQueue(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v2

    monitor-enter v2

    .line 645
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCaptureImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/media/ImageReader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, p1, :cond_0

    .line 646
    new-array p0, v5, [Ljava/lang/String;

    const-string p1, "This callback is not for current ImageReader."

    aput-object p1, p0, v4

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 647
    monitor-exit v2

    return-void

    .line 650
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmRemainRequestQueue(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 652
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1

    new-array p1, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mdumpRequestQueueStatus(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 656
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmWaitForAllSnapshotLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 657
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmWaitForAllSnapshotLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 660
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz p1, :cond_3

    .line 661
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 662
    new-array p1, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmShutterFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 663
    new-array p1, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmImageFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmShutterFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    .line 665
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmImageFpsMonitor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    .line 668
    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
