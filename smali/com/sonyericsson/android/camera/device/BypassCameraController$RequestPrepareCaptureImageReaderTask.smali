.class Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
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
    .locals 1

    .line 1564
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1565
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1567
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invoked buffNum:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1569
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1567
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1571
    :cond_0
    new-instance p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1572
    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fputmImageReaderBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)V

    .line 1573
    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fputmCapturingBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)V

    .line 1574
    invoke-static {p1, p5}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fputmCaptureSize(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Landroid/graphics/Rect;)V

    .line 1575
    invoke-static {p1, p6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->-$$Nest$fputmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 4

    .line 1589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmImageReaderReadyLockObject(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1590
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmImageReaderReadyLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V

    .line 1591
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmImageReaderReadyLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 1592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;->mRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    invoke-static {v0, v2, p0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mprepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1592
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    .line 1580
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
