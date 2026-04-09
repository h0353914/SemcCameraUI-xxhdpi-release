.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoWaitingTrackedObjectForAfStart"
.end annotation


# instance fields
.field mIsAutoFocusStarted:Z

.field mIsBurstCaptureRequired:Z

.field mIsCaptureRequired:Z

.field mIsFirstCallback:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 4267
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 p1, 0x0

    .line 4261
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    const/4 v0, 0x1

    .line 4262
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    .line 4263
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    .line 4264
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    .line 4268
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 4260
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 0

    .line 4370
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4371
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    :cond_0
    return-void
.end method

.method public varargs handleCaptureBurst([Ljava/lang/Object;)V
    .locals 0

    .line 4391
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4392
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    :cond_0
    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 2

    .line 4357
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4358
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4360
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleClearFocus([Ljava/lang/Object;)V
    .locals 0

    .line 4365
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->handleCaptureCancel([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 4385
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectLost([Ljava/lang/Object;)V
    .locals 4

    .line 4337
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnObjectLost([Ljava/lang/Object;)V

    .line 4339
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 4340
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    .line 4341
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 4342
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4344
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    if-eqz v0, :cond_2

    .line 4345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    .line 4346
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 4347
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4350
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 6

    .line 4276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, p1, v4

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4280
    aget-object v0, p1, v4

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;

    .line 4281
    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4287
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    .line 4288
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 4290
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4291
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v4, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4293
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    if-eqz v0, :cond_3

    .line 4294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4297
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    .line 4282
    :cond_4
    :goto_1
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 4377
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    if-eqz v0, :cond_0

    .line 4378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4380
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStartAfAfterObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 4304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDeviceStatusReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4307
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    if-eqz v0, :cond_1

    return-void

    .line 4312
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isObjectTrackingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4317
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 4323
    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/Rect;

    .line 4326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7900(Lcom/sonyericsson/android/camera/controller/StateMachine;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 4330
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 4331
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsCaptureRequired:Z

    .line 4332
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsBurstCaptureRequired:Z

    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 0

    .line 4398
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->access$6600(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;)V

    return-void
.end method
