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

    .line 5885
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 p1, 0x0

    .line 5881
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    .line 5886
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 5887
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    .line 5888
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 5879
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method


# virtual methods
.method public varargs handleFusionConditionChanged([Ljava/lang/Object;)V
    .locals 1

    .line 6021
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 3

    .line 5994
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleOnHeatedOverCritical([Ljava/lang/Object;)V
    .locals 2

    .line 6027
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6030
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->handleOnHeatedOverCritical([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 5

    .line 5966
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

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11202(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;)Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;

    .line 5970
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12000(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 3

    .line 6007
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

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

.method public varargs handleOnReachBatteryLimit([Ljava/lang/Object;)V
    .locals 6

    .line 6013
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 6014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 6015
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v1, [Ljava/lang/Object;

    .line 6016
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0

    .line 6002
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11300(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 5946
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 5947
    monitor-enter p0

    .line 5948
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5950
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 5955
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createProvisionalContentFrame()I

    move-result v0

    .line 5957
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5959
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 5961
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

    .line 5902
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 5903
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    if-eqz v0, :cond_0

    .line 5904
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5906
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 5907
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    goto :goto_0

    .line 5910
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    if-nez v0, :cond_2

    .line 5911
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5913
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12100(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 5916
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    if-eqz p1, :cond_3

    .line 5918
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :cond_3
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 5894
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 5897
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 3

    .line 5987
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0

    .line 5934
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11700(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handlePauseRecording([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 5924
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method public varargs handleResumeRecording([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 5929
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsPausingRequested:Z

    return-void
.end method

.method public varargs handleStopRecording([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 5939
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 5975
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 5976
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p1, v1, :cond_0

    .line 5979
    new-array p1, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage corruption : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 5980
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 5982
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
