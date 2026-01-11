.class Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestSnapshotTask"
.end annotation


# instance fields
.field private final mBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field private final mCaptureNum:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 830
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 831
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 832
    iput p4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mCaptureNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;ILcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 3

    .line 847
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestSnapshot()  captureNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mCaptureNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dateTaken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 849
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 850
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extraOutput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 851
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 852
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->mCaptureNum:I

    .line 854
    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;->create(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;

    move-result-object p0

    .line 853
    invoke-virtual {v0, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestSnapshot(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;)I

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 837
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isOpenBypassCameraTaskPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
