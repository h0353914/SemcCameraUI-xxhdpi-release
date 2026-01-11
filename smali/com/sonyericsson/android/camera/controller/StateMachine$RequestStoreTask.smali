.class Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestStoreTask"
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object p0
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .locals 0

    .line 10397
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10398
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10403
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke RequestStoreTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10415
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misNeedRepairRequestId(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmContentsViewController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 10427
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmContentsViewController(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    .line 10428
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v0

    .line 10429
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 10437
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getShouldUpdateOrientationBeforeStoring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 10440
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 10442
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misNeedRepairRequestId(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10448
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_2

    .line 10445
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmPhotoSavingRequestList(Lcom/sonyericsson/android/camera/controller/StateMachine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10453
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->setRequestId(I)V

    .line 10456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_2

    .line 10434
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mstorePicture(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 10462
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
