.class Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$16;)V
    .locals 0

    .line 10610
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 10613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msetCurrentCapturingMode(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 10614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    .line 10616
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-direct {v2, v3, v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 10617
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setIsCameraSwitching(Z)V

    .line 10618
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyOnEvfPrepared()V

    .line 10619
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestResizeEvf(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 10620
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 10621
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    filled-new-array {p0, v0, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 10620
    invoke-interface {v1, v2, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method
