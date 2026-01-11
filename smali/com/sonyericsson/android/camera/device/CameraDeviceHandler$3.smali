.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->waitUntilStopCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 1186
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    const-string p0, "Recorder is already stop completed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmWaitUntilVideoStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmWaitUntilVideoStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1195
    const-string p0, "Already wait until video stop completed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 1198
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "waitUntilStopCompleted : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1199
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmWaitUntilVideoStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/util/concurrent/CountDownLatch;)V

    .line 1203
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmWaitUntilVideoStopCompleted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1205
    const-string v0, "Fail to wait recorder controller stopTask finish in device thread."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1208
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "waitUntilStopCompleted : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
