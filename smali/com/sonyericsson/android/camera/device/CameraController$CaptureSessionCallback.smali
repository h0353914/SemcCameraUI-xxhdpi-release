.class final Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

.field private static final IGNORE_CAPTURE_RESULT_WHEN_OPEN_CAMERA:I = 0x12

.field private static final PREVIEW_STEADY_FRAME_NUM:I = 0xa


# instance fields
.field private mIsPreviewStartNotificationRequired:Z

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 5358
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 5359
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 p1, 0x0

    .line 5360
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 0

    .line 5364
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 5365
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 5366
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method private isCaptureResultValid(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 5534
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 5535
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 5536
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private shouldUseCamera2(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private updatedDebugInfoInViewFinder(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    .line 5551
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmApplicationContext(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isShowDebugInfoOnPreview(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5554
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5555
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetISO(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5556
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetAperture(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5557
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetDeltaEV(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5558
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetEV(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5559
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetEnvironmentLuxIndex(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5560
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetCaptureModeValue(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 5552
    const-string v0, "SS:%s\nISO:%s\nF:%.1f\nDeltaEV:%.1f\nEV:%.1f\nLuxIndex:%d\nCaptureMode:%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5561
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->updatedDebugInfoInViewFinder(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 5386
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->isCaptureResultValid(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5387
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 5388
    const-string p0, "Current capture frame invalid, abandon capture result."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5403
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->input(Ljava/lang/Object;)V

    .line 5406
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 5407
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    .line 5408
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mnotifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 5409
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 5412
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq v0, v1, :cond_5

    .line 5413
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "CurrentDeviceState is not READY."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void

    .line 5417
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7

    .line 5418
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-nez v0, :cond_6

    .line 5419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onFirstPreviewFrameReceived()V

    .line 5421
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;I)V

    .line 5422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onPreviewFrameReceived(I)V

    .line 5424
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount3(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/16 v3, 0x12

    if-ge v0, v3, :cond_8

    .line 5425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount3(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmReceivedResultCount3(Lcom/sonyericsson/android/camera/device/CameraController;I)V

    .line 5426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount3(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 5427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmIsCaptureAfterOpenAvailable(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    .line 5430
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 5431
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmIsCaptureAvailable(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    .line 5433
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount2(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_a

    .line 5434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount2(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 5435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->onPreviewSteady()V

    .line 5439
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount2(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmReceivedResultCount2(Lcom/sonyericsson/android/camera/device/CameraController;I)V

    .line 5440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReceivedResultCount4(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmReceivedResultCount4(Lcom/sonyericsson/android/camera/device/CameraController;I)V

    if-eqz p3, :cond_b

    .line 5443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->add(Landroid/hardware/camera2/CaptureResult;)V

    .line 5452
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->updatedDebugInfoInViewFinder(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmWalkingParamStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetIso(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->setIso(I)V

    .line 5454
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmWalkingParamStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetExpTime(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->setEv(J)V

    .line 5456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mupdateLightCondition(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mupdateBurstAvailableState(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5461
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;)V

    const-wide/16 v2, 0x8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5468
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mupdateAwbColorValue(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mupdateAeState(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5470
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mupdateAfState(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5472
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmDetectedFaces(Lcom/sonyericsson/android/camera/device/CameraController;[Landroid/hardware/camera2/params/Face;)V

    .line 5475
    :cond_b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_c

    .line 5476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 5477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->dumpLatest()V

    .line 5483
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCropRegionChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5484
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCropRegionChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->setCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 5487
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5488
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCropRegionChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCropRegionChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v2

    .line 5489
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 5490
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCropRegionChecker(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5492
    :cond_e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;

    .line 5493
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V

    goto :goto_0

    .line 5496
    :cond_f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/StateCheckerBase;

    .line 5497
    invoke-virtual {v2, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/StateCheckerBase;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_1

    .line 5499
    :cond_10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5503
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5505
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviousLogicalCameraMode(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result p2

    if-eq p2, p1, :cond_11

    .line 5506
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmPreviousLogicalCameraMode(Lcom/sonyericsson/android/camera/device/CameraController;I)V

    .line 5507
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onLogicalCameraModeChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5510
    :catch_0
    const-string p0, "com.sonymobile.logicalMultiCamera.mode is not implements"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_11
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 5499
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    .line 5545
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invoked sessionId:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " captureSession:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5546
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " reason:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5547
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 5545
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 5371
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onImageAvailable zsl image"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5372
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 5373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object v0

    .line 5374
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5375
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmReprocessDataFactory(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/zsl/DataFactory;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/DataFactory;->input(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 5378
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_2
    :goto_0
    return-void
.end method
