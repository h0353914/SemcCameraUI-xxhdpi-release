.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->handleCaptureReady([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

.field final synthetic val$cameraKeyStatus:Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4868
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;->val$cameraKeyStatus:Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4871
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;->val$cameraKeyStatus:Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4872
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
