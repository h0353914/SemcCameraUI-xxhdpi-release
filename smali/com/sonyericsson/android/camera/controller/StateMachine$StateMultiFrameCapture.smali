.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateMultiFrameCapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 6121
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCapture-IA;)V

    .line 6122
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MULTI_FRAME_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method


# virtual methods
.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 6127
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz p1, :cond_1

    .line 6130
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6131
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mrequestStorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 6136
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->requestNextCaptureIfRequired()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6138
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6139
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;)V

    .line 6140
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;->setPendingTask(Ljava/lang/Runnable;)Lcom/sonyericsson/android/camera/controller/StateMachine$StateRestartPreviewSession;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 6139
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6147
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_0

    .line 6150
    :cond_3
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setContinuousCapture()V

    .line 6151
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    :goto_0
    return-void
.end method
