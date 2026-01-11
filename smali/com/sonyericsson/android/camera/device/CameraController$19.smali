.class Lcom/sonyericsson/android/camera/device/CameraController$19;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->configImageWriter(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 3983
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$19;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReleased(Landroid/media/ImageWriter;)V
    .locals 3

    .line 3986
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "CameraController"

    if-eqz v0, :cond_0

    const-string v0, "### onImageReleased"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3988
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3990
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "### IllegalStateException e : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 3996
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$19;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmInCaptureDataDeque(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    if-eqz p0, :cond_2

    .line 3998
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    :cond_2
    return-void
.end method
