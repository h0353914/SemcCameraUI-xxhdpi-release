.class Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRepeatingRequestTask"
.end annotation


# static fields
.field private static final REPEATING_BURST_COUNT:I = 0x3


# instance fields
.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field private final mCaptureSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V
    .locals 2

    .line 1317
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1318
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1319
    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    .line 1320
    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v1, 0x1

    invoke-direct {p3, p1, p2, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 1321
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1312
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 8

    .line 1354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1355
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Preview surface is not created, so the request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1360
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 1361
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Preview surface is not valid, so the request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1367
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1380
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    new-array v3, v2, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1381
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1380
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1391
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "SetRepeatingRequestTask : Preview surface is not valid, so the request is refused."

    .line 1392
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1396
    :cond_4
    throw v0

    :catch_1
    const-string v0, "setRepeatingRequest: finalizeOutputConfigurations failed."

    .line 1383
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1386
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1387
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1385
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    :catch_2
    move-exception v0

    .line 1371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "SetRepeatingRequestTask : Preview surface is not valid, so the request is refused."

    .line 1372
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1376
    :cond_5
    throw v0

    .line 1402
    :cond_6
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreCaptureOnGoing()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1406
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreScanOnGoing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1407
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1409
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1407
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1412
    :cond_8
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    const/4 v4, 0x3

    if-nez v3, :cond_a

    .line 1413
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1414
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    new-array v6, v2, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1416
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1413
    invoke-virtual {v3, v5, v2, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    if-nez v3, :cond_9

    const-string p0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is null."

    .line 1418
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 1423
    :cond_9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_d

    .line 1427
    new-array v5, v2, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_b

    .line 1429
    new-array v5, v6, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    aput-object v6, v5, v2

    .line 1431
    :cond_b
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1432
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v7

    .line 1431
    invoke-virtual {v6, v7, v2, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    if-nez v5, :cond_c

    const-string p0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is not null."

    .line 1436
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 1441
    :cond_c
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1446
    :cond_d
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1447
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 1448
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_e

    const-string p0, "Preview surface is not valid, so the request is refused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_e
    return-void

    .line 1453
    :cond_f
    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1455
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_10

    new-array v3, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRepeatingBurst() requestNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1456
    :cond_10
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1458
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 1456
    invoke-virtual {v3, v0, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1459
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_11

    .line 1460
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V

    .line 1465
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1467
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_3

    .line 1469
    :cond_12
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_3

    .line 1472
    :cond_13
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 1474
    :goto_3
    new-instance v3, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1476
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1477
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1478
    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    invoke-direct {v5, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1479
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->publish()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception p0

    const-string v0, "Failed in setRepeatingRequest."

    .line 1507
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_4
    move-exception v0

    .line 1481
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1482
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_4

    .line 1484
    :cond_14
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1485
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p0, "setRepeatingRequest : mPreviewSurface is invalid.(after performing set repeating request)"

    .line 1486
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_5

    .line 1488
    :cond_15
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    if-ne v3, v4, :cond_16

    .line 1489
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in setRepeatingRequest  by CameraAccessException. Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 1489
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1492
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1493
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1491
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    goto :goto_5

    .line 1496
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed in setRepeatingRequest by CameraAccessException. Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_4
    const-string p0, "Failed in setRepeatingRequest"

    .line 1483
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 3

    .line 1326
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1345
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in SetRepeatingRequestTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1347
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1340
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v1

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
