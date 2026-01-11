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

    .line 10757
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10758
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 10759
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mTriggerType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 10764
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke ChangeCameraModeTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10765
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 10771
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 10773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreviewSynchronized()V

    .line 10777
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideSurface()V

    .line 10780
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 10782
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->applyCapturingMode()V

    .line 10784
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 10788
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 10790
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestResizeEvf(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 10792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showSurface()V

    .line 10794
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x1

    .line 10796
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->mTriggerType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 10794
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 10798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misFusionMonitoringNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10799
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$ChangeCameraModeTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFusionMonitoring()V

    .line 10801
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_END:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    :cond_3
    :goto_0
    return-void
.end method
