.class Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestPrepareCaptureImageReaderTask"
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V
    .locals 2

    .line 1521
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1522
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1524
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoked buffNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    .line 1524
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1528
    :cond_0
    new-instance p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1529
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4002(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)I

    .line 1530
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4102(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)I

    .line 1531
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {p1, p5}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4202(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1532
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {p0, p6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4302(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 1510
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 4

    .line 1546
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1547
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1548
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 1549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {v0, v2, p0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4600(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1549
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    .line 1537
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
