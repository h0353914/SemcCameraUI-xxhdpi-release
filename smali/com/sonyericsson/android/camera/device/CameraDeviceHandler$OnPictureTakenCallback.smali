.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPictureTakenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 2807
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([B)V
    .locals 1

    .line 2812
    invoke-static {}, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->onPictureTaken()V

    .line 2814
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 2816
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mdequeueSavingPhotoRequestAndAttachImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;[B)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p1

    .line 2817
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onTakePictureDone(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_0
    return-void
.end method
