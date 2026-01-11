.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateBurstCapture"
.end annotation


# static fields
.field private static final BURST_NUMBER_MAX:I = 0x64

.field private static final BURST_NUMBER_MIN:I = 0x2

.field private static final BURST_STATE_CAPTURING:I = 0x1

.field private static final BURST_STATE_FINALIZE:I = 0x3

.field private static final BURST_STATE_FINISH_AFTER_BUFFER_AVAILABLE:I = 0x4

.field private static final BURST_STATE_INITIALIZE:I = 0x0

.field private static final BURST_STATE_WAIT_FOR_BUFFER_AVAILABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StateMachine.StateBurstCapture"


# instance fields
.field private mBurstState:I

.field private final mDataString:Ljava/lang/String;

.field private mIndex:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 3

    .line 6623
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase-IA;)V

    .line 6624
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 6625
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareBurst()V

    const/4 p1, 0x0

    .line 6626
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    .line 6627
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmssSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6629
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mDataString:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    .line 6633
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    .line 6635
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    :goto_0
    const/4 p1, 0x1

    .line 6637
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->handleOnPrepareBurstDone([Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method private finishCapturing()V
    .locals 2

    .line 6652
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 6659
    iput v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 6655
    iput v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    :goto_0
    return-void
.end method

.method private requestNextCapture()V
    .locals 3

    .line 6869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v0, v2, :cond_0

    .line 6874
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLastPhotoSavingRequest(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setFinalInSavingGroup(Z)V

    .line 6878
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 6880
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v1

    .line 6881
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 6882
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mDataString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setSaveTimeForCaptureGroup(Ljava/lang/String;)V

    .line 6883
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setCaptureIdForCaptureGourp(I)V

    .line 6884
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 6885
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    return-void
.end method

.method private requestStopBurstCapture()V
    .locals 5

    .line 6889
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishBurst()V

    .line 6890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6891
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6892
    iget p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->setNumOfBurstTaken(I)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 4

    .line 6642
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setManualBurstCount(I)V

    .line 6643
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setHdrRequired(Z)V

    .line 6644
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setNightAvailable(Z)V

    .line 6645
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 6646
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 6645
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 6647
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 0

    .line 6710
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->finishCapturing()V

    return-void
.end method

.method public varargs handleOnCaptureRequested([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 6717
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 6719
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", af:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6721
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 6722
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 6721
    invoke-interface {v1, v2, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6724
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    .line 6725
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->finishCapturing()V

    .line 6728
    :cond_1
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    if-eqz p1, :cond_a

    const/4 v1, 0x2

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 6742
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6743
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    if-ge p1, v1, :cond_4

    .line 6744
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6745
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 6747
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 6750
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    .line 6753
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    .line 6762
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WAIT_FOR_BUFFER_AVAILABLE cannot accept ON_SHUTTER_DONE event"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6730
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 6731
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6732
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 6734
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 6737
    :cond_9
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    :goto_0
    return-void

    .line 6758
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "INITIALIZE cannot accept ON_SHUTTER_DONE event"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 2

    .line 6863
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 2

    .line 6854
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnPrepareBurstDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 6679
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 6680
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6694
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 6696
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 6697
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 6683
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    const/4 p1, 0x1

    .line 6684
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    .line 6686
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoCapture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 6687
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 3

    .line 6780
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->handleOnStoreCompleted([Ljava/lang/Object;)V

    .line 6782
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    const-string v0, "ON_STORE_COMPLETED is received. But buffer is not available."

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 6794
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6795
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 6799
    :cond_1
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    if-ge p1, v1, :cond_3

    .line 6800
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6801
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 6803
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 6806
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 6784
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 6785
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 6789
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    .line 6790
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    :goto_0
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 6770
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz p1, :cond_1

    .line 6773
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6774
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestStorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    :cond_1
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 6847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 1

    .line 6672
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 6819
    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v1, 0x1

    .line 6820
    aget-object p1, p1, v1

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 6822
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v2, :cond_1

    .line 6825
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Storage corruption : type = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 6826
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 6829
    :cond_1
    :goto_0
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    .line 6835
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    .line 6831
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    :goto_1
    return-void
.end method
