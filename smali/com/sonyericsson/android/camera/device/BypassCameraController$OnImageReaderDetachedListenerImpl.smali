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

    .line 627
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onDetached(Landroid/media/ImageReader;)V
    .locals 5

    .line 630
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/media/ImageReader;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const-string p0, "This callback is not for current ImageReader."

    .line 632
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 633
    monitor-exit v0

    return-void

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 638
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    new-array p1, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$800(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 642
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$900(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 643
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$900(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 646
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz p1, :cond_3

    .line 647
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 648
    new-array p1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHUTTER_FPS_MONITOR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 649
    new-array p1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMAGE_FPS_MONITOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 650
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    .line 651
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    .line 654
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
