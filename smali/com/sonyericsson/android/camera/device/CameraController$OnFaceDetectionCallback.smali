.class Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFaceDetectionCallback"
.end annotation


# static fields
.field private static final IGNORE_CAPTURE_RESULT_FOR_FACE_FRAME_ABNORMAL:I = 0x14

.field private static final IGNORE_CAPTURE_RESULT_SUPERNIGHTMODE_RESTART:I = 0x19


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 6610
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 2

    .line 6619
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$misFaceDetectionRunning(Lcom/sonyericsson/android/camera/device/CameraController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6620
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Face detection is stopped."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6624
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSuperNightMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount4(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount2(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    :cond_3
    return-void

    .line 6629
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    return-void
.end method

.method public setCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    return-void
.end method
