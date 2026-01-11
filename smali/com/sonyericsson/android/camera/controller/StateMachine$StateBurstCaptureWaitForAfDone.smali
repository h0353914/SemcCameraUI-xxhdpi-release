.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateBurstCaptureWaitForAfDone"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateBurstCaptureWaitForAfDone"


# instance fields
.field private mIsCancelRequested:Z

.field private mIsHighQualityBurstAvailable:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 6497
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V

    .line 6498
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v0, 0x0

    .line 6499
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->mIsCancelRequested:Z

    .line 6500
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misHighQualityBurstAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->mIsHighQualityBurstAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 6505
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->mIsCancelRequested:Z

    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 5

    .line 6510
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->mIsHighQualityBurstAvailable:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckBurstConditions(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->mIsCancelRequested:Z

    invoke-direct {v2, v3, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6515
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;)V

    .line 6527
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshouldRestartSessionBeforeCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 6528
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6529
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetNextSessionTypeForCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 6530
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    .line 6529
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6532
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 6533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6534
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowCannotBurstInDarkCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :goto_0
    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 2

    .line 6550
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 6559
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 6542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePause-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method
