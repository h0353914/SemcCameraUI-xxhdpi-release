.class Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
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

    .line 1216
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1217
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 p1, 0x0

    .line 1218
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1224
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1225
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private releaseBypassCamera()V
    .locals 6

    .line 1298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1300
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1303
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1305
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Time-out occurs to release BypassCamera."

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1308
    :catch_0
    const-string v0, "Time-out thread is interrupted."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1310
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->close()V

    .line 1311
    const-string v0, "BypassCamera is closed."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V

    .line 1314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmBypassCameraParameters(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V

    .line 1315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmSnapshotCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)V

    .line 1316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmWaitForAllSnapshotLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V

    .line 1317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmWaitForSnapshotReadyLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmSavingPhotoRequestQueue(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 1319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmRemainRequestQueue(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmIsSnapshotReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V

    .line 1323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmCapturingBufferNum(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)V

    .line 1325
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onCameraClosed()V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 9

    const-string v0, "Waiting to complete all snapshots:"

    const-string v1, "Waiting to complete snapshot ready:"

    .line 1241
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1242
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mawaitImageReaderReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1243
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mcreateSnapshotReadyCountDownLatch(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    const/4 v2, 0x0

    .line 1245
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmWaitForSnapshotReadyLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1247
    new-array v3, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmWaitForSnapshotReadyLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1247
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1249
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmWaitForSnapshotReadyLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {v1, v5, v6, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "Snapshot ready done is completed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "Timeout of waiting snapshot ready done."

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1259
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3

    .line 1260
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    .line 1261
    new-array v1, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-wide/16 v0, 0x3a98

    mul-long/2addr v5, v0

    .line 1264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mWaitForAllSnapshotDoneLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v7, 0x7530

    .line 1265
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1264
    invoke-virtual {v0, v5, v6, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "All snapshots done are completed"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 1271
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Timeout of waiting all snapshots done."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1275
    :catch_0
    const-string v0, "Intercept waiting request done."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1279
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mfinalizeCaptureImageReader(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 1280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmPrevCaptureImageReaderRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)V

    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmIsSnapshotReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestSnapshotFree()V

    .line 1284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmIsSnapshotReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V

    .line 1286
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->releaseBypassCamera()V

    return-void
.end method

.method public postCameraDeviceAccess()V
    .locals 1

    .line 1291
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->removeOpenCloseStatusInfo()V

    .line 1292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1293
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mreleaseCloseBypassCameraWakeLock(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 1230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1233
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
