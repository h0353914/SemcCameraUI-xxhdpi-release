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

    .line 2281
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v0, 0x0

    .line 2277
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    .line 2278
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    .line 2282
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 2283
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2284
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 2286
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2287
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x1b58

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 2270
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    return-void
.end method

.method private moveStateIfCaptureReady()V
    .locals 2

    .line 2296
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    if-eqz v0, :cond_2

    .line 2297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2298
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2500(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2302
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    .line 2303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFusionMonitoring()V

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-static {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .line 2348
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 2349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs handleOnCameraDeviceOpened([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2313
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 2315
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsCameraOpened:Z

    .line 2316
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->moveStateIfCaptureReady()V

    :cond_0
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 2

    .line 2322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 2323
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->mIsEvfPrepared:Z

    .line 2324
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->moveStateIfCaptureReady()V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 2343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .locals 3

    .line 2330
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCameraNotAvailableFailedToOpen()V

    const-string p1, "StateMachine.StateCameraSwitching"

    const-string v0, "[CameraNotAvailable] resume timeout."

    .line 2332
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2334
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 2336
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 2338
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCameraSwitching;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method
