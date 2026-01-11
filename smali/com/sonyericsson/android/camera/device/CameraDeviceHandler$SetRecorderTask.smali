.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;
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
    name = "SetRecorderTask"
.end annotation


# instance fields
.field private mRecorderController:Lcom/sonyericsson/android/camera/recorder/RecorderController;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;->mRecorderController:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1229
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetRecorderTask : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmVideoRecorderLock(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1231
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;->mRecorderController:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmVideoRecorder(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)V

    .line 1232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "SetRecorderTask : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 1232
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
