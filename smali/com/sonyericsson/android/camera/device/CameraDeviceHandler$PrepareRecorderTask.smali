.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;
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
    name = "PrepareRecorderTask"
.end annotation


# instance fields
.field private parameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->parameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1249
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PrepareRecorderTask : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorderLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1251
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1252
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1253
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->parameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    invoke-interface {v2, v3, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1254
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "prepareRecorder() : Failed to prepare MediaRecorder."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1255
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onStartRecordingFailed()V

    .line 1258
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnError()V

    .line 1259
    monitor-exit v0

    return-void

    .line 1262
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "PrepareRecorderTask : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 1262
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
