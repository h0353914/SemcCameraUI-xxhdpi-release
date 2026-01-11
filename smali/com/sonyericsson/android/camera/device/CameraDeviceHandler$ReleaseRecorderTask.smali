.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;
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
    name = "ReleaseRecorderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 1348
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1352
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReleaseRecorderTask : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorderLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1354
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1355
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->release()Z

    .line 1356
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)V

    .line 1358
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmIsRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/Boolean;)V

    .line 1360
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ReleaseRecorderTask : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 1358
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
