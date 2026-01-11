.class Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenBypassCameraTask"
.end annotation


# instance fields
.field private final mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private final mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1030
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1031
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mPreferences:Landroid/content/SharedPreferences;

    .line 1032
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 1033
    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1034
    iput-object p6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1035
    sget-object p4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq p5, p4, :cond_0

    .line 1038
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p4

    .line 1039
    invoke-static {p1, p2, p3, p6, p4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mpreloadSettings(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    .line 1041
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_BYPASS_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 10

    const-string v0, "Open BypassCamera. facing:"

    .line 1054
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1055
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v1

    .line 1056
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v2, v3, :cond_0

    .line 1057
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mpreloadSettings(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    .line 1061
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "]"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_1

    .line 1077
    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    goto :goto_0

    .line 1081
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OpenBypassCameraTask:[preview] [UnExpected camera Id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1074
    :cond_2
    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    goto :goto_0

    .line 1071
    :cond_3
    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    goto :goto_0

    .line 1066
    :cond_4
    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->FRONT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    goto :goto_0

    .line 1063
    :cond_5
    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    :goto_0
    const/4 v6, 0x0

    .line 1087
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const-string v8, "BypassCamera"

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)V

    .line 1088
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_6

    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1089
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->open(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1097
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    new-instance v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    invoke-direct {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;-><init>()V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmBypassCameraParameters(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V

    .line 1098
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    new-instance v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {v2, v7, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl-IA;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmSnapshotCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)V

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    new-instance v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {v2, v7, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl-IA;)V

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmSnapshotCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    move-result-object v7

    new-instance v8, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotFreeCallbackImpl;

    invoke-direct {v8, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotFreeCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotFreeCallbackImpl-IA;)V

    invoke-virtual {v0, v2, v7, v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setPhotoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;)V

    .line 1104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    new-instance v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {v2, v7, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl-IA;)V

    new-instance v7, Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;

    invoke-direct {v7, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl-IA;)V

    invoke-virtual {v0, v2, v7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setBurstCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;)V

    .line 1108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1109
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 1110
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "changeToVideoMode() preview:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " video:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " stabilizer:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1113
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " hdr:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1114
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1116
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v2

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1118
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v7

    .line 1119
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v8

    .line 1120
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v9

    .line 1117
    invoke-static {v6, v7, v8, v9}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mgetVideoMode(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1121
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1122
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mtoAndroidUtilSize(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v8

    .line 1123
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v0

    .line 1116
    invoke-virtual {v2, v6, v7, v8, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToVideoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_1
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1125
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mhandleTimeout(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void

    .line 1130
    :cond_8
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "changeToPhotoMode() preview:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " picture:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1134
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCamera(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    new-instance v6, Landroid/util/Size;

    .line 1135
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1136
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Landroid/util/Size;

    .line 1137
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1138
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1139
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v8

    .line 1134
    invoke-virtual {v0, v2, v6, v7, v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToPhotoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_2
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1147
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1151
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v2, v6, :cond_a

    .line 1155
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    .line 1158
    const-string v2, "Camera permission is not granted, so pre-capture is refused."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 1163
    :cond_a
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_c

    if-ne v2, v4, :cond_b

    goto :goto_2

    .line 1171
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenBypassCameraTask():[FastCapture="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    if-eqz v0, :cond_d

    .line 1195
    new-instance p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 1196
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1197
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1198
    new-instance p0, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    .line 1199
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    filled-new-array {v1}, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1200
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_d
    return-void

    .line 1141
    :catch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mhandleTimeout(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void

    :catch_2
    move-exception v0

    .line 1091
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1092
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fputmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)V

    .line 1093
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to open BypassCamera. "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    .line 1046
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
