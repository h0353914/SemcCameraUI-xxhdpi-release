.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->requestNextCaptureIfRequired()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;)V
    .locals 0

    .line 6454
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_0
    return-void
.end method
