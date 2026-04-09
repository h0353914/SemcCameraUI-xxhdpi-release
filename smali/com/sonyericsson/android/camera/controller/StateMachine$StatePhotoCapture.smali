.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoCapture"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoCapture"


# instance fields
.field private mIsStorageError:Z

.field private mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 4677
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v0, 0x0

    .line 4674
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mIsStorageError:Z

    .line 4678
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 4679
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4680
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    goto :goto_0

    .line 4682
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    .line 4686
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->cancelPredictiveCaptureIndicatorAnimation()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 4669
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private requestNextCaptureIfRequired()Z
    .locals 5

    .line 4908
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke mNextCapture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4909
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    .line 4911
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    .line 4912
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return v2
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 4691
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleCapture([Ljava/lang/Object;)V
    .locals 4

    .line 4794
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke mNextCapture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4796
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_1

    .line 4808
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture button is ignored. mNextCapture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Saving request count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4811
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    .line 4808
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 4798
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4799
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 5

    .line 4704
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4706
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void

    .line 4710
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 4711
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4712
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 4714
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 4736
    :cond_2
    aget-object p1, p1, v4

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 4738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4002(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 4739
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4102(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 4741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 4747
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4748
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 4749
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4750
    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setImageData([B)V

    .line 4751
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    .line 4754
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    .line 4773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setStorageType(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    .line 4776
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 4779
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeAfDone()V

    .line 4780
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTimeCaptureStart()V

    .line 4781
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 4784
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 4785
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 4786
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4787
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 4786
    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    .line 4716
    :cond_3
    :goto_1
    aget-object p1, p1, v4

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 4717
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    .line 4720
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    .line 4722
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4723
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelPreProcessState()V

    if-eqz v1, :cond_4

    .line 4726
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 4727
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v4, v4, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_2

    .line 4730
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 4819
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 4821
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideDisplayFlashScreen()V

    .line 4822
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->onCaptureDone()V

    .line 4823
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4825
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getSomcType()I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 4827
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->startPredictiveCaptureIndicatorAnimation()V

    goto :goto_0

    .line 4829
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->cancelPredictiveCaptureIndicatorAnimation()V

    .line 4832
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 4833
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 4832
    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 4837
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mIsStorageError:Z

    if-nez p1, :cond_2

    .line 4838
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->requestNextCaptureIfRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4839
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setContinuousCapture()V

    .line 4840
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_1

    .line 4844
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4847
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4848
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4854
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    :cond_3
    :goto_1
    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 3

    .line 4869
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->handleOnStoreCompleted([Ljava/lang/Object;)V

    .line 4871
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4872
    aget-object p1, p1, v1

    check-cast p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 4873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 4876
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mNextCapture:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4878
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4879
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 4880
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 4861
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 4863
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4864
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 4896
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashRequired(Z)V

    .line 4897
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    const/16 v2, 0xff

    invoke-interface {v0, v2, v2, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setDisplayFlashColor(III)V

    .line 4898
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 4891
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;->mIsStorageError:Z

    return-void
.end method
