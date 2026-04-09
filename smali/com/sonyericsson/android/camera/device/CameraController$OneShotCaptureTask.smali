.class Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;
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
    name = "OneShotCaptureTask"
.end annotation


# instance fields
.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field private final mCaptureSurface:Landroid/view/Surface;

.field private final mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/media/ImageReader;)V
    .locals 0

    .line 1815
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1816
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1817
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 1818
    invoke-virtual {p4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->mCaptureSurface:Landroid/view/Surface;

    .line 1819
    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1809
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/media/ImageReader;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 6

    .line 1865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 1868
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    new-array v3, v2, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1869
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1868
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    goto :goto_0

    :catch_0
    const-string v0, "OneShotCaptureTask: finalizeOutputConfigurations failed."

    .line 1871
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1874
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1875
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1873
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 1882
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->mRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1883
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->mCaptureSurface:Landroid/view/Surface;

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1886
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1882
    invoke-virtual {v0, v3, v2, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "OneShotCaptureTask : CaptureRequest cannot be created."

    .line 1888
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 1892
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "capture()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1893
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1895
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1893
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1896
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1897
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1898
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string v0, "Failed in OneShotCaptureTask."

    .line 1917
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1902
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1903
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 1906
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed in OneShotCaptureTask by CameraAccessException. Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const-string p0, "Failed in OneShotCaptureTask"

    .line 1904
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected postCameraDeviceAccess()V
    .locals 2

    .line 1849
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Pending OneShotCaptureTask is added."

    .line 1851
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 3

    .line 1824
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1834
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1837
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    return v1

    .line 1841
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in OneShotCaptureTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1843
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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
