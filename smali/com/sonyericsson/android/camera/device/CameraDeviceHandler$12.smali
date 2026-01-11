.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 5854
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5855
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method


# virtual methods
.method public getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .locals 0

    .line 5864
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method

.method public onRecordError(II)V
    .locals 2

    .line 5876
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR:MediaRecorder ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 5878
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnError()V

    .line 5879
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5880
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordError(II)V

    :cond_0
    return-void
.end method

.method public onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 2

    .line 5886
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5889
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraAudioRestriction(Z)V

    .line 5890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mnotifyRecordingStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 5892
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 5927
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5938
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnError()V

    goto :goto_0

    .line 5913
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5896
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finalizeRecording()V

    .line 5898
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onRecordProgress(J)V
    .locals 1

    .line 5869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5870
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordProgress(J)V

    :cond_0
    return-void
.end method

.method public setSavingRequestBuilder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .locals 1

    .line 5859
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5860
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$12;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method
