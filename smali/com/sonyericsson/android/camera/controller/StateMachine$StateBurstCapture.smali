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

    .line 5036
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 5037
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 5038
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareBurst()V

    const/4 p1, 0x0

    .line 5039
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    .line 5040
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5042
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mDataString:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    .line 5046
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    .line 5048
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 4978
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method

.method private finishCapturing()V
    .locals 1

    .line 5062
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    .line 5069
    iput v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 5065
    iput v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requestNextCapture()V
    .locals 3

    .line 5277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 5278
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v0, v2, :cond_0

    .line 5282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setFinalInSavingGroup(Z)V

    .line 5286
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 5288
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getRequestId(Z)I

    move-result v1

    .line 5289
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 5290
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mDataString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setSaveTimeForCaptureGroup(Ljava/lang/String;)V

    .line 5291
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setCaptureIdForCaptureGourp(I)V

    .line 5292
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 5293
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    return-void
.end method

.method private requestStopBurstCapture()V
    .locals 5

    .line 5297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finishBurst()V

    .line 5298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5300
    iget p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->setNumOfBurstTaken(I)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 3

    .line 5054
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setManualBurstCount(I)V

    .line 5055
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 5056
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 5055
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 5057
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleCaptureCancel([Ljava/lang/Object;)V
    .locals 0

    .line 5120
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->finishCapturing()V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 3

    .line 5271
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    aput-object p1, v1, v2

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 3

    .line 5262
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    aput-object p1, v1, v2

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnPrepareBurstDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 5089
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5090
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5104
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 5106
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 5107
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 5093
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    const/4 p1, 0x1

    .line 5094
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    .line 5096
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 5097
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    .line 5127
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5129
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", af:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5131
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 5132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v2

    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    .line 5131
    invoke-interface {v1, v3, v5}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5134
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 5135
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->finishCapturing()V

    .line 5138
    :cond_1
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5152
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5153
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    if-ge p1, v4, :cond_3

    .line 5154
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 5157
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 5160
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    .line 5163
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    .line 5172
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WAIT_FOR_BUFFER_AVAILABLE cannot accept ON_SHUTTER_DONE event"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5140
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5141
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5142
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 5144
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 5147
    :cond_6
    iput v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    .line 5168
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "INITIALIZE cannot accept ON_SHUTTER_DONE event"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 2

    .line 5188
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoBase;->handleOnStoreCompleted([Ljava/lang/Object;)V

    .line 5190
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5202
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "ON_STORE_COMPLETED is received. But buffer is not available."

    .line 5203
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 5207
    :cond_1
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mIndex:I

    if-ge p1, v0, :cond_3

    .line 5208
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5209
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    goto :goto_0

    .line 5211
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 5214
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestStopBurstCapture()V

    goto :goto_0

    .line 5192
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "ON_STORE_COMPLETED is received. But buffer is not available."

    .line 5193
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 5197
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    .line 5198
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->requestNextCapture()V

    :goto_0
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 5180
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 5182
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

    .line 5183
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 5255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 3

    .line 5082
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 5227
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v2, 0x1

    .line 5228
    aget-object p1, p1, v2

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 5230
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v3, :cond_0

    .line 5233
    new-array p1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage corruption : type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5234
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 5237
    :cond_0
    iget p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x4

    .line 5243
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    .line 5239
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateBurstCapture;->mBurstState:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
