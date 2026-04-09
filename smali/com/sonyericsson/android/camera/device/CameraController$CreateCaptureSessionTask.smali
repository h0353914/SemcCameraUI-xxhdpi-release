.class Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;
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
    name = "CreateCaptureSessionTask"
.end annotation


# instance fields
.field private mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1011
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1012
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 1013
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->CREATE_CAPTURE_SESSION_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1005
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 6

    .line 1063
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateCaptureSessionTask invoked isVideo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1064
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1063
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 1066
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 1067
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateCaptureSessionTask executed request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1069
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1070
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1074
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1075
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    .line 1079
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2700(Lcom/sonyericsson/android/camera/device/CameraController;)V

    goto :goto_1

    .line 1081
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 1086
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1087
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1088
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1089
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1087
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3800(Lcom/sonyericsson/android/camera/device/CameraController;II)V

    goto :goto_1

    .line 1091
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2700(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 1095
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 1096
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 1098
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3902(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    .line 1100
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v1

    .line 1099
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v3, Landroid/view/SurfaceHolder;

    invoke-direct {v2, v0, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2402(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1107
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1110
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    :cond_6
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->mRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 1115
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$4300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1117
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1118
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 1119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "CreateCaptureSessionTask() : Failed by CameraAccessException"

    .line 1121
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1122
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    .line 1126
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Failed in createCaptureSession by CameraAccessException. Reason:"

    .line 1127
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_8
    :goto_2
    const-string p0, "Failed in createCaptureSession"

    .line 1124
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method protected postCameraDeviceAccess()V
    .locals 2

    .line 1048
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    return-void

    .line 1056
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 3

    .line 1018
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$2;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1039
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in CreateCaptureSessionTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1041
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return v2

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
