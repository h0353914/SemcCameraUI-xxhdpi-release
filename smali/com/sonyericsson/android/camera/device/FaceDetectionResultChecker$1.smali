.class Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;
.super Ljava/lang/Object;
.source "FaceDetectionResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

.field final synthetic val$faceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;->val$faceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;->val$faceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;->onFaceDetection(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    :cond_0
    return-void
.end method
