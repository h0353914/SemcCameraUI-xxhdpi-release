.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateResume"
.end annotation


# instance fields
.field private mIsCameraStarted:Z

.field private mIsCurrentStorageReady:Z

.field private mIsEvfPrepared:Z

.field protected mIsResumeSequenceStarted:Z

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field protected mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

.field private mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V
    .locals 2

    .line 3004
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    .line 2973
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    .line 3005
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STATE_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 3006
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 3007
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 p2, 0x0

    .line 3008
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsResumeSequenceStarted:Z

    .line 3009
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCameraStarted:Z

    .line 3010
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCurrentStorageReady:Z

    .line 3011
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmVirtualKeyEventDispatcher(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->start()V

    .line 3012
    iput-object p4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    if-eqz p3, :cond_0

    .line 3016
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p4

    invoke-interface {p3}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    const/4 p3, 0x1

    .line 3017
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsEvfPrepared:Z

    goto :goto_0

    .line 3019
    :cond_0
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsEvfPrepared:Z

    .line 3022
    :goto_0
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmIsSemiAutoEnabled(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method


# virtual methods
.method protected doStateReady()V
    .locals 2

    .line 3064
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mStartupAction:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstartFastCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;)V

    return-void
.end method

.method public entry()V
    .locals 2

    .line 3069
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StateResume"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3070
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->entry()V

    .line 3071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorageStateListener(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$mresume(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)V

    .line 3072
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setIsCameraSwitching(Z)V

    .line 3073
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 3074
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    .line 3075
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCurrentStorageReady:Z

    .line 3076
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 3079
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mhasRemainSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3082
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 3083
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showSavingProgressBar()V

    goto :goto_0

    .line 3085
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->startResuming()V

    .line 3086
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->moveStateIfCaptureReady()V

    .line 3088
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 3090
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 3088
    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 3095
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->exit()V

    .line 3096
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mStorageReadyStateListener:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 3098
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideSavingProgressBar()V

    .line 3099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmNotifyResumeTimeoutTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3101
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->STATE_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method protected getResumeTimeLimit()I
    .locals 0

    const/16 p0, 0x1b58

    return p0
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 1

    .line 3136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method public varargs handleOnCameraDeviceAvailable([Ljava/lang/Object;)V
    .locals 2

    .line 3231
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsResumeSequenceStarted:Z

    if-eqz p1, :cond_0

    .line 3233
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmNotifyResumeTimeoutTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x1b58

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public varargs handleOnCameraDeviceClosed([Ljava/lang/Object;)V
    .locals 0

    .line 3165
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mhasRemainSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsResumeSequenceStarted:Z

    if-nez p1, :cond_0

    .line 3166
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    .line 3167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->startResuming()V

    :cond_0
    return-void
.end method

.method public varargs handleOnCameraDeviceOpened([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 3153
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 3154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3155
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCameraStarted:Z

    .line 3156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->moveStateIfCaptureReady()V

    .line 3157
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disablePreviewScreenshots()V

    :cond_0
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 2

    .line 3106
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsResumeSequenceStarted:Z

    if-nez v0, :cond_0

    .line 3107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->requestCheckEvfPreparationRetrying()V

    return-void

    .line 3111
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->RESIZE_EVF:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 3114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    invoke-interface {p1}, Lcom/sonymobile/cameracommon/evf/Evf;->asSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 3115
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsEvfPrepared:Z

    .line 3116
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    .line 3117
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 3116
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->moveStateIfCaptureReady()V

    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 0

    .line 3125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmShutterFeedback(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;)V

    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 1

    .line 3142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 1

    .line 3148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method public varargs handleOnStorageReadyStateChanged([Ljava/lang/Object;)V
    .locals 1

    .line 3194
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCurrentStorageReady:Z

    if-eqz p1, :cond_0

    .line 3196
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->moveStateIfCaptureReady()V

    :cond_0
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 3189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

    .line 3174
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCameraNotAvailableFailedToOpen()V

    .line 3176
    const-string p1, "Camera application resume is timed-out."

    const-string v0, "StateMachine"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3177
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "  CameraDevice is ready:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCameraStarted:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3178
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "  Evf is ready:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsEvfPrepared:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 3179
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "  Storage is ready:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCurrentStorageReady:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3181
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 3183
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 3184
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateWarning-IA;)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStartCaptureCountDown([Ljava/lang/Object;)V
    .locals 1

    .line 3131
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mnotifyDelayedEvent(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method protected moveStateIfCaptureReady()V
    .locals 2

    .line 3033
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke isStorageReady:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCurrentStorageReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCameraStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCameraStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEvfPrepared:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsEvfPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getExtraOperation():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    .line 3040
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3033
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3042
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCameraStarted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsEvfPrepared:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsCurrentStorageReady:Z

    if-eqz v0, :cond_3

    .line 3044
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$minitGeoTagManager(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 3045
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$minitSideSenseSetting(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 3047
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 3048
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_1

    .line 3049
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mshowBlackScreen(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 3052
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startPreview()V

    .line 3053
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misFusionMonitoringNeeded(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3054
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startFusionMonitoring()V

    .line 3057
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->reportFullyDrawnOnce()V

    .line 3059
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->doStateReady()V

    :cond_3
    return-void
.end method

.method protected startResuming()V
    .locals 4

    .line 3208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    :cond_0
    const/4 v0, 0x1

    .line 3212
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->mIsResumeSequenceStarted:Z

    .line 3214
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showSurface()V

    .line 3215
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestResizeEvf(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 3216
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->RESIZE_EVF:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 3219
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 3222
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmShutterFeedback(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;)V

    .line 3227
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmNotifyResumeTimeoutTask(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
