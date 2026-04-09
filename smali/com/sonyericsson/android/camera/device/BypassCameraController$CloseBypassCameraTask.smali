.class Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseBypassCameraTask"
.end annotation


# static fields
.field private static final TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS:J = 0x7530L

.field private static final TIMEOUT_WAIT_FOR_EACH_SNAPSHOT_DONE_MILLIS:J = 0x3a98L

.field private static final TIMEOUT_WAIT_SNAPSHOT_READY_DONE_MILLIS:J = 0x1388L


# instance fields
.field private final mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1174
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 p1, 0x0

    .line 1175
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 1166
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1181
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1182
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 1166
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private releaseBypassCamera()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1260
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1702(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v0, "Time-out occurs to release BypassCamera."

    .line 1262
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Time-out thread is interrupted."

    .line 1265
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1267
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->close()V

    const-string v0, "BypassCamera is closed."

    .line 1268
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    .line 1271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2002(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    .line 1272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2102(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$902(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 1276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 1278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)Z

    .line 1280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3702(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)I

    .line 1282
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onCameraClosed()V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 7

    .line 1198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    const/4 v0, 0x0

    .line 1202
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1204
    new-array v1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting to complete snapshot ready:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1205
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1204
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Snapshot ready done is completed"

    .line 1209
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Timeout of waiting snapshot ready done."

    .line 1211
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1216
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3

    .line 1217
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    .line 1218
    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting to complete all snapshots:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-wide/16 v1, 0x3a98

    mul-long/2addr v3, v1

    .line 1221
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x7530

    .line 1222
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1221
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "All snapshots done are completed"

    .line 1226
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "Timeout of waiting all snapshots done."

    .line 1228
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Intercept waiting request done."

    .line 1232
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1236
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3300(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1237
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3402(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    .line 1239
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1240
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestSnapshotFree()V

    .line 1241
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)Z

    .line 1243
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->releaseBypassCamera()V

    return-void
.end method

.method public postCameraDeviceAccess()V
    .locals 1

    .line 1248
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->removeOpenCloseStatusInfo()V

    .line 1249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1250
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$3600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 1187
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1190
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
