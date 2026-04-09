.class Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeCameraModeTask"
.end annotation


# instance fields
.field private final mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mTriggerType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V
    .locals 0

    .line 8539
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8540
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 8541
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mTriggerType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 8533
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 8546
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke ChangeCameraModeTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 8547
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 8554
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 8557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 8559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreviewSynchronized()V

    .line 8563
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideSurface()V

    .line 8566
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 8568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->applyCapturingMode()V

    .line 8571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 8574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 8576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showSurface()V

    .line 8579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 8581
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mTriggerType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    aput-object v4, v3, v2

    .line 8579
    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8584
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFusionMonitoring()V

    .line 8586
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_END:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
