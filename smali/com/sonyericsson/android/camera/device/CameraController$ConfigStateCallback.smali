.class Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigStateCallback"
.end annotation


# instance fields
.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 1141
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1137
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    const-string p0, "onClosed()"

    .line 1160
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    .line 1154
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    new-instance v6, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {p1, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 8

    .line 1146
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ON_CONFIGURED:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 1149
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ON_CONFIGURED:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method
