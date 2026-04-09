.class final Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureSessionCallback"
.end annotation


# static fields
.field private static final IGNORE_CAPTURE_RESULT_THRESHOLD:I = 0x5


# instance fields
.field private mIsPreviewStartNotificationRequired:Z

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 2047
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2048
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 p1, 0x0

    .line 2049
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 2041
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 0

    .line 2053
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2054
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2055
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 2041
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method private isCropRegionChanged(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2120
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 2122
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4700(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 2123
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2124
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2125
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2126
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2130
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5802(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2131
    new-array p0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCropRegionChanged() newRect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " changed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 2062
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2063
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    .line 2064
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5400(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2065
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2068
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq p1, v0, :cond_2

    .line 2069
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "CurrentDeviceState is not READY."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 2073
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4700(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    .line 2074
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4708(Lcom/sonyericsson/android/camera/device/CameraController;)I

    .line 2076
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4600(Lcom/sonyericsson/android/camera/device/CameraController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2077
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->isCropRegionChanged(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2078
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4700(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 2079
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onCropRegionReady()V

    .line 2080
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4602(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z

    :cond_5
    if-eqz p3, :cond_6

    .line 2085
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->add(Landroid/hardware/camera2/CaptureResult;)V

    .line 2089
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2090
    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 2089
    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setCropRegion(Landroid/graphics/Rect;)V

    .line 2092
    :cond_6
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_7

    .line 2093
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2094
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->dumpLatest()V

    .line 2100
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2101
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;

    .line 2102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V

    goto :goto_0

    .line 2104
    :cond_8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 2110
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " captureSession:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reason:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 2110
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
