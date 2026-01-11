.class Lcom/sonyericsson/android/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyThermalNormal()V
    .locals 2

    .line 487
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_0

    .line 490
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNotifyThermalWarning(Z)V
    .locals 4

    .line 496
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    :cond_0
    if-eqz p1, :cond_1

    .line 505
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_ULTRA_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 507
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 506
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 511
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 510
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    .line 514
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 515
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 516
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    .line 517
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onNotifyThermalWarningExtra(Z)V
    .locals 3

    .line 524
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 529
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 531
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 530
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 535
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    .line 534
    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V

    .line 539
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 540
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 541
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result p1

    if-nez p1, :cond_2

    .line 542
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 545
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onReachCriticalTemperature(Z)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendThermalEvent(ZZ)V

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    .line 479
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$mreleaseCamera(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method
