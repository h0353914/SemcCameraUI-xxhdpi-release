.class Lcom/sonyericsson/android/camera/controller/StateMachine$6;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 598
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 596
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$6;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onStoreCompleted(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 2

    .line 571
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", savedStorage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 574
    :cond_0
    instance-of p3, p2, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    if-eqz p3, :cond_1

    .line 575
    move-object p3, p2

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isSmallJpegData()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 577
    invoke-static {}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->getFinalImageSaver()Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->updateSmallImageState(Z)V

    .line 580
    :cond_1
    new-instance p3, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-direct {p3, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method public onStoreFailed(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V
    .locals 2

    .line 585
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 587
    :cond_0
    instance-of p3, p2, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    if-eqz p3, :cond_1

    .line 588
    move-object p3, p2

    check-cast p3, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->isUsingProcessingMediaAPI()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 589
    invoke-static {}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->getFinalImageSaver()Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->updateSmallImageState(Z)V

    .line 592
    :cond_1
    new-instance p3, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-direct {p3, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method
