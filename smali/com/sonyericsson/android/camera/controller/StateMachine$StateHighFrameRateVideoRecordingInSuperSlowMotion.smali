.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateHighFrameRateVideoRecordingInSuperSlowMotion"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StateMachine.StateHighFrameRateVideoRecordingInSuperSlowMotion"


# instance fields
.field private mAlreadyHighFrameRateRecordingDone:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 7089
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    const/4 v0, 0x0

    .line 7087
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->mAlreadyHighFrameRateRecordingDone:Z

    .line 7090
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 p0, 0x1

    .line 7091
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method


# virtual methods
.method public varargs handleFinishZoom([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleHighFameRateRecordingDone([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 7101
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->mAlreadyHighFrameRateRecordingDone:Z

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 6

    .line 7143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 7146
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 3

    .line 7126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0

    .line 7096
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mpauseVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePerformZoom([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handlePrepareZoom([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleSlowMotionFeedbackAnimationEnd([Ljava/lang/Object;)V
    .locals 3

    .line 7106
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->mAlreadyHighFrameRateRecordingDone:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 7107
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitForHighFrameRateVideoRecordingDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWaitForHighFrameRateVideoRecordingDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7110
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 7111
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 7117
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7118
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_0

    .line 7113
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    .line 7131
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 7132
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v1, :cond_1

    .line 7135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Storage corruption : state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 7136
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 7138
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7139
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
