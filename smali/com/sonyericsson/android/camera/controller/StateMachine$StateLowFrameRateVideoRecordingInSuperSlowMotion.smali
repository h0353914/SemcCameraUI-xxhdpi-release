.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateLowFrameRateVideoRecordingInSuperSlowMotion"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateLowFrameRateVideoRecordingInSuperSlowMotion"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 5415
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5416
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 p0, 0x1

    .line 5417
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11502(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .line 5427
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateLowFrameRateVideoRecordingInSuperSlowMotion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5428
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->entry()V

    .line 5429
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .locals 0

    .line 5422
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setLowPower()V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 6

    .line 5475
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5477
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v4, [Ljava/lang/Object;

    .line 5478
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 3

    .line 5453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0

    .line 5442
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11700(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .locals 3

    .line 5447
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5448
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleStopRecordingSlowMotion([Ljava/lang/Object;)V
    .locals 3

    .line 5457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5458
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 5463
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 5464
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 5467
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage corruption : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5468
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 5470
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5471
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleTriggerSlowMotion([Ljava/lang/Object;)V
    .locals 3

    .line 5434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startSuperSlowMotion()V

    .line 5435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5436
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11608(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    .line 5437
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->startSlowMotionFeedbackAnimation()V

    return-void
.end method
