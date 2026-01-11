.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartRecorderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1274
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StartRecorderTask : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    .line 1280
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorderLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraAudioRestriction(Z)V

    .line 1283
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->start()V

    .line 1284
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmIsRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/Boolean;)V

    .line 1286
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangeProviderDeviceStatusToRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 1308
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "StartRecorderTask : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 1286
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1288
    :catch_0
    const-string v0, "mMediaRecorder.start() fail."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onStartRecordingFailed()V

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnError()V

    .line 1297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1299
    :try_start_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmLastVideoSavingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p0

    .line 1300
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object p0

    .line 1299
    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->deleteVideoFile(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1302
    :catch_1
    const-string/jumbo p0, "startRecording: [Unable to delete empty media file.]"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
