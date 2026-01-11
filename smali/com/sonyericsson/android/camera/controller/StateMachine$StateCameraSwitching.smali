.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCameraSwitching"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateCameraSwitching"


# instance fields
.field private final mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private mIsCameraOpened:Z

.field private mIsEvfPrepared:Z

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 1

    .line 2890
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    const/4 v0, 0x0

    .line 2886
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    .line 2887
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    .line 2891
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 2892
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2893
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 2895
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmNotifyResumeTimeoutTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2896
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmNotifyResumeTimeoutTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x1b58

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    return-void
.end method

.method private moveStateIfCaptureReady()V
    .locals 2

    .line 2905
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    if-eqz v0, :cond_2

    .line 2906
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2907
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    .line 2913
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misFusionMonitoringNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2914
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFusionMonitoring()V

    .line 2917
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartFastCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .line 2958
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 2959
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmNotifyResumeTimeoutTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs handleOnCameraDeviceOpened([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2923
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2924
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 2925
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    .line 2926
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->moveStateIfCaptureReady()V

    :cond_0
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 2

    .line 2932
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 2933
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    .line 2934
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->moveStateIfCaptureReady()V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 2953
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .locals 3

    .line 2940
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCameraNotAvailableFailedToOpen()V

    .line 2942
    const-string p1, "StateMachine.StateCameraSwitching"

    const-string v0, "[CameraNotAvailable] resume timeout."

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2944
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 2946
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 2948
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method
