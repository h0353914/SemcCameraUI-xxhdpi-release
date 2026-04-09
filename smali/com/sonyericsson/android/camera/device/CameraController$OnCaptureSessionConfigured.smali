.class Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;
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
    name = "OnCaptureSessionConfigured"
.end annotation


# instance fields
.field private final mResult:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1172
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1173
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1174
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1165
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 5

    .line 1191
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    if-eq v0, v3, :cond_2

    .line 1197
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "This callback is invalid."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1201
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_3

    .line 1202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1204
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CONFIGURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1202
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    .line 1206
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 1210
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4602(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z

    .line 1211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4702(Lcom/sonyericsson/android/camera/device/CameraController;I)I

    .line 1213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 1215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4800()Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1217
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;-><init>(Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1216
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 1219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1224
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;

    .line 1225
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 1226
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "Pending OneShotCaptureTask is posted."

    .line 1227
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :cond_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 1179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1182
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq p0, v0, :cond_2

    .line 1183
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "CurrentDeviceState is not OPENED."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
