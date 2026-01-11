.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 2367
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter(Z)V
    .locals 3

    .line 2371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mpeekLastSavingPhotoRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 2372
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onShutter() isBurst "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraDeviceHandler"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2373
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isSuperNightMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 2374
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mplayShutterSoundIfNeed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 2376
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2377
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isAutoFocus:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;IZ)V

    :cond_2
    return-void
.end method
