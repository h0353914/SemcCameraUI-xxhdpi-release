.class Lcom/sonyericsson/android/camera/device/CameraController$20;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/zsl/DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/device/zsl/DataListener<",
        "Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 5576
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    .locals 2

    .line 5579
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "### invoke E "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5580
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslCaptureTaskDeque(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5581
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$misDataReady(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5582
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmZslCaptureTaskDeque(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;

    .line 5583
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->capture(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    goto :goto_0

    .line 5585
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onDataAvailable(Ljava/lang/Object;)V
    .locals 0

    .line 5576
    check-cast p1, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$20;->onDataAvailable(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    return-void
.end method
