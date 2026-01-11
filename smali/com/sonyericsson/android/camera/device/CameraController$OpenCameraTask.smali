.class Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenCameraTask"
.end annotation


# instance fields
.field private final mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private final mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method static bridge synthetic -$$Nest$mcreatePreviewSessionAfterCameraOpened(Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->createPreviewSessionAfterCameraOpened()V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 2685
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2686
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2687
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 2688
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2689
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    .line 2690
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 0

    .line 2694
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2695
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2696
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 2697
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2698
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    .line 2699
    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    return-void
.end method

.method private createPreviewSessionAfterCameraOpened()V
    .locals 2

    .line 2874
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked E."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2875
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2876
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is removed, it need not createPreviewSession."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 2880
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewRequest(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2881
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmPreviewRequest(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->-$$Nest$msetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 2883
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 8

    const-string v0, "OpenCameraTask() mDeviceId : "

    .line 2720
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmReceivedResultCount3(Lcom/sonyericsson/android/camera/device/CameraController;I)V

    .line 2721
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmIsCaptureAfterOpenAvailable(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    .line 2722
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 2723
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v1

    .line 2725
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v3, v4, :cond_0

    .line 2726
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCameraRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2729
    :cond_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OpenCameraTask invoked cameraId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2730
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getInstance()Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->bindService()V

    .line 2732
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback-IA;)V

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 2734
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getTargetDeviceID(Lcom/sonyericsson/android/camera/device/CameraParameters;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmDeviceId(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/lang/String;)V

    .line 2735
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    new-array v3, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmDeviceId(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2736
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraManager(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmDeviceId(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceStatusThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2750
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->awaitLoadSettingsThread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2752
    const-string v0, "OpenCameraTask() : Failed to load setting."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2753
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->-$$Nest$mcancelOpenCamera(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V

    .line 2754
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2755
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 2756
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 2754
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 2761
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureRequestHolder(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    .line 2762
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 2761
    invoke-virtual {v0, v3, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2766
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmStateCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->-$$Nest$mwaitCameraOpened(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fputmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)V

    .line 2767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2769
    const-string v0, "OpenCameraTask() : Failed to open camera."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2770
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2771
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 2772
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 2770
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 2777
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 2780
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq v0, v3, :cond_5

    move v0, v4

    goto :goto_0

    .line 2783
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isNeedCreatePreviewSession()Z

    move-result v0

    .line 2786
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2787
    const-string p0, "OpenCameraTask() : CloseCameraTask() is already requested."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 2792
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOneShotCaptureTaskPendingList(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2793
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v4, :cond_9

    if-eq v3, v5, :cond_8

    const/4 v0, 0x3

    if-ne v3, v0, :cond_7

    goto :goto_1

    .line 2804
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenBypassCameraTask():[FastCapture="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2797
    :cond_8
    sput-boolean v4, Lcom/sonyericsson/android/camera/device/CameraController;->isPreProcessRequiredFrom:Z

    :cond_9
    move v2, v0

    .line 2823
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmOneShotCaptureTaskPendingList(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_b

    .line 2828
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v2, :cond_a

    .line 2829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmUiThreadHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2837
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetpreviewRequestLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2838
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->createPreviewSessionAfterCameraOpened()V

    .line 2839
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2843
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v0, v2, :cond_c

    .line 2845
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onOpenCameraRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 2858
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2860
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 2861
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v4, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 2862
    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    .line 2863
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 2864
    invoke-static {p0, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    invoke-direct {v3, p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2866
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 2867
    new-instance p0, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    .line 2868
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    filled-new-array {v1}, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 2869
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_d
    return-void

    :catch_0
    move-exception v0

    .line 2742
    const-string v1, "OpenCameraTask() : Failed by CameraAccessException"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2743
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2744
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 2745
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 2743
    invoke-static {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 2

    .line 2704
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2705
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpenCameraTask : CloseCameraTask is already requested."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v1

    .line 2709
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2710
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "OpenCameraTask : should not open because of error caused."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
