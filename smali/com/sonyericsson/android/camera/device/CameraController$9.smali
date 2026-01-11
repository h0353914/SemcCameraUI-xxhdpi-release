.class Lcom/sonyericsson/android/camera/device/CameraController$9;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->takeMultiFramePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field final synthetic val$multiFramePreCaptureNum:I

.field final synthetic val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

.field final synthetic val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iput-object p6, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 15

    .line 920
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;-><init>(ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    .line 923
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->-$$Nest$misLLS(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 925
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$9$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$9$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$9;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    .line 938
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 925
    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 940
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->HDR:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 942
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v6

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v7

    iget v9, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v2

    .line 945
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    new-array v11, v5, [Landroid/view/Surface;

    aput-object v2, v11, v4

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 942
    invoke-virtual/range {v6 .. v11}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_2

    .line 946
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->WALKING:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const/4 v6, 0x2

    if-ne v2, v3, :cond_5

    .line 948
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v3, " EV:"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Walking(Anti-shaking) Original ISO:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmWalkingParamStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v7

    .line 949
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getIso()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmWalkingParamStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v7

    .line 950
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getEv()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 948
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 954
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 955
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetCurrentCameraId(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;

    move-result-object v2

    .line 956
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 957
    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmWalkingParamStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getIso()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/2addr v7, v6

    if-le v7, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v7

    .line 959
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmWalkingParamStatus(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getEv()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    div-long/2addr v6, v8

    .line 960
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Walking(Anti-shaking) Set ISO:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 962
    :cond_4
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 963
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_MULTI_CAPTURING_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 966
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 965
    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 968
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 967
    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v8

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v9

    iget v12, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v2

    .line 973
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    new-array v14, v5, [Landroid/view/Surface;

    aput-object v2, v14, v4

    const/4 v11, 0x2

    const/4 v13, 0x1

    .line 969
    invoke-virtual/range {v8 .. v14}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;Ljava/util/Map;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 976
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v7

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v8

    iget v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmMultiFramePreCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v2

    .line 979
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewSurface(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    new-array v12, v6, [Landroid/view/Surface;

    aput-object v2, v12, v4

    aput-object v3, v12, v5

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 976
    invoke-virtual/range {v7 .. v12}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v2

    .line 983
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$9$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$9$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$9;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    invoke-static {v3, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mcaptureBurst(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 999
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->HDR:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    if-ne v0, v1, :cond_6

    .line 1000
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mskip2FramesInHDRMultiframeCapture(Lcom/sonyericsson/android/camera/device/CameraController;)V

    :cond_6
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 1

    .line 1006
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
