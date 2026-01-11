.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 3330
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 3331
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 3354
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnAutoFlashChanged([Ljava/lang/Object;)V
    .locals 2

    .line 3362
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnAutoHdrChanged([Ljava/lang/Object;)V
    .locals 2

    .line 3371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnAutoNightChanged([Ljava/lang/Object;)V
    .locals 2

    .line 3380
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 3

    .line 3336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3339
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOrientationAndCommit(I)V

    return-void
.end method

.method public varargs handleOnSemiAutoDisabled([Ljava/lang/Object;)V
    .locals 0

    .line 3349
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleOnSemiAutoEnabled([Ljava/lang/Object;)V
    .locals 0

    .line 3344
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
