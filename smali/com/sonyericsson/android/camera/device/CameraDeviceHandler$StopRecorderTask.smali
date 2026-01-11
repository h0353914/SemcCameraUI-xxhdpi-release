.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;
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
    name = "StopRecorderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "invoked recording:"

    .line 1319
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "StopRecorderTask : E"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1321
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorderLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1322
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 1323
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_1

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " paused:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v3

    .line 1324
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 1323
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 1328
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->stop()V

    .line 1329
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->flushRecording(Z)V
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1331
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "stopRecording():[Failed to stop MediaRecorder.]"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1336
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "Recorder doesn\'t exists, so this request is refused."

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1339
    :cond_4
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1340
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmIsRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/Boolean;)V

    .line 1341
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "StopRecorderTask : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 1339
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
