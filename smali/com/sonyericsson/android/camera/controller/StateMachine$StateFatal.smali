.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateFatal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateFatal"


# instance fields
.field private mIsSaving:Z

.field private mLazyAbort:Z

.field private mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

.field private mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V
    .locals 2

    .line 6479
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v1, 0x0

    .line 6459
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    .line 6461
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    .line 6469
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 6471
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    .line 6480
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 6481
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    .line 6482
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    .line 6487
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6491
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 6495
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 6496
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    .line 6499
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6500
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6503
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6504
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 6508
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopPreview()V

    .line 6510
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6513
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$13200(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 6515
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6516
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->doLazyAbort()V

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 6456
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZ)V

    return-void
.end method

.method private doLazyAbort()V
    .locals 3

    .line 6585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    if-eqz v0, :cond_0

    .line 6586
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6588
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    .line 6589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 6578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    if-eqz v0, :cond_0

    .line 6579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6580
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbortTask:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;

    :cond_0
    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_5

    .line 6545
    array-length v0, p1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 6551
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mLazyAbort:Z

    if-eqz p1, :cond_1

    .line 6552
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->doLazyAbort()V

    goto :goto_1

    .line 6553
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mIsSaving:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 6556
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6557
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_1

    :cond_3
    return-void

    .line 6555
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .locals 3

    .line 6566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFinalize;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 3

    .line 6522
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    aput-object p1, v1, v2

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 1

    .line 6529
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6531
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 6532
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 6534
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isMessageDialogOpened()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6535
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6536
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->mStoreDataResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 6538
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 5

    .line 6572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6573
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method
