.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->handleOnPreTakePictureDone([Ljava/lang/Object;)V
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

    .line 6258
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 2

    .line 6261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
