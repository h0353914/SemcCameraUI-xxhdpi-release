.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoCaptureWhileRecording"
.end annotation


# instance fields
.field private final mIsPaused:Z

.field private mIsPausingRequested:Z

.field private mIsReturnToVideoRecordingRequired:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 1

    .line 7516
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State-IA;)V

    const/4 p1, 0x0

    .line 7512
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    .line 7517
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 7518
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    .line 7519
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method


# virtual methods
.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 7660
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 2

    .line 7633
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .locals 2

    .line 7666
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7669
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 5

    .line 7605
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, [B

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    check-cast p1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;-><init>([BLjava/lang/Integer;Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmChapterThumbnail(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)V

    .line 7609
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$msendVideoChapterThumbnailToViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 2

    .line 7646
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 6

    .line 7652
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 7653
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$StateFatal-IA;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7654
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 7655
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0

    .line 7641
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoHandleRecordingError(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 7585
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 7586
    monitor-enter p0

    .line 7587
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmContentsViewController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmContentsViewController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 7594
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmContentsViewController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createProvisionalContentFrame()I

    move-result v0

    .line 7596
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 7598
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 7600
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 4

    .line 7541
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 7542
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    if-eqz v0, :cond_0

    .line 7543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7545
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 7546
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoResumeRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    goto :goto_0

    .line 7549
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    if-nez v0, :cond_2

    .line 7550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7552
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoPauseRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 7555
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    if-eqz p1, :cond_3

    .line 7557
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :cond_3
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 7525
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz p1, :cond_1

    .line 7528
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getImageData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7530
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestStorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_0

    .line 7532
    :cond_0
    const-string v1, "SnapShot while recording, capture frame dropped ! "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7533
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmContentsViewController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearProvisionalContentFrame(I)V

    .line 7534
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 3

    .line 7626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore-IA;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0

    .line 7573
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mpauseVideoRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 7563
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method public varargs handleResumeRecording([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 7568
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 7578
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 7614
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 7615
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v1, :cond_1

    .line 7618
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Storage corruption : state = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 7619
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 7621
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
