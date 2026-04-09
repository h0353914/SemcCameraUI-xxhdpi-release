.class Lcom/sonyericsson/android/camera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$100(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Runnable --> sendEvent(EVENT_PAUSE) & closeCamera()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const-string v2, "activity-paused"

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$300(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$400(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 487
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$402(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_0

    .line 490
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 491
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PauseEventAndReleaseCameraTask was executed when onResume is not skipped."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
