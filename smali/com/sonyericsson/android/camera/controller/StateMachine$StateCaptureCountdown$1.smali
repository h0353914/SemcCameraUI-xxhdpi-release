.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->start(ILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V
    .locals 0

    .line 3658
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlinkFinished()V
    .locals 0

    .line 3661
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->access$10000(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V

    return-void
.end method

.method public onCountDownFinished()V
    .locals 7

    .line 3666
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->access$10100(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    move-result-object v0

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3668
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v6, v6, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v5, v6, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReadyForRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v5, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 3669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3671
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$7000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3672
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v3, v4, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 3675
    :cond_2
    :goto_1
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 3676
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->access$10100(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    move-result-object v1

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    if-ne v1, v3, :cond_3

    .line 3677
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 3678
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    goto :goto_2

    .line 3679
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->access$10100(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    move-result-object p0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    if-ne p0, v1, :cond_4

    .line 3680
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 3682
    :cond_4
    :goto_2
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    return-void
.end method

.method public onSoundTypeChange(J)V
    .locals 2

    .line 3687
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xfa0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 3689
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_4SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->playSound(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    goto :goto_0

    .line 3691
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_1SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->playSound(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    :cond_1
    :goto_0
    return-void
.end method
