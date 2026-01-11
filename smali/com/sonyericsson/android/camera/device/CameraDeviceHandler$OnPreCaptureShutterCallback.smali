.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPreCaptureShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 2305
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onShutter(Z)V
    .locals 1

    .line 2310
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isSuperNightMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2311
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mplayShutterSoundIfNeed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 2313
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mpeekLastSavingPhotoRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p1

    .line 2314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2315
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreCaptureShutterCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onPreShutterDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_1
    return-void
.end method
