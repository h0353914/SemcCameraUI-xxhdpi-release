.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateFrontCameraSwitching"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 1

    .line 10641
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    .line 10642
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching-IA;)V

    .line 10643
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 10649
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->exit()V

    .line 10650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setIsCameraSwitching(Z)V

    .line 10651
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method
