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

    .line 7016
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7017
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 p0, 0x1

    .line 7018
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .line 7028
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateLowFrameRateVideoRecordingInSuperSlowMotion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7029
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;->entry()V

    .line 7030
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckThermalWarning(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnHeatedOverCoolingLow([Ljava/lang/Object;)V
    .locals 0

    .line 7023
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setLowPower()V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 6

    .line 7076
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7077
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7078
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 7079
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 3

    .line 7054
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0

    .line 7043
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mpauseVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .locals 3

    .line 7048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7049
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleStopRecordingSlowMotion([Ljava/lang/Object;)V
    .locals 3

    .line 7058
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7059
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    .line 7064
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 7065
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v1, :cond_1

    .line 7068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Storage corruption : state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 7069
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 7071
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7072
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method public varargs handleTriggerSlowMotion([Ljava/lang/Object;)V
    .locals 3

    .line 7035
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startSuperSlowMotion()V

    .line 7036
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7037
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHighFrameRateVideoRecordingCountInSuperSlowMotion(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmHighFrameRateVideoRecordingCountInSuperSlowMotion(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    .line 7038
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->startSlowMotionFeedbackAnimation()V

    return-void
.end method
