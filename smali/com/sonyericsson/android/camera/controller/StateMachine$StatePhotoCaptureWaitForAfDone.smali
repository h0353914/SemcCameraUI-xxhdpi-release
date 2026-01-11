.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoCaptureWaitForAfDone"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoCaptureWaitForAfDone"


# instance fields
.field private final mIsDirectCaptureRequired:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 1

    .line 6042
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V

    .line 6043
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 6044
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->mIsDirectCaptureRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method


# virtual methods
.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 5

    .line 6074
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 6075
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6076
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->isMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6077
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6079
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 5

    .line 6051
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->mIsDirectCaptureRequired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6053
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6054
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmShutterFeedback(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;)V

    .line 6055
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6058
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6060
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 6085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6086
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 0

    .line 6091
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPredictiveApplier(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->-$$Nest$mattemptCommitSettings(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;)V

    return-void
.end method
