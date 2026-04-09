.class Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;
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

    .line 997
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 998
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 999
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mPreferences:Landroid/content/SharedPreferences;

    .line 1000
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 1001
    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1002
    iput-object p6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1003
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-eq p5, p2, :cond_0

    .line 1006
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p2

    .line 1007
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p1, p3, p4, p5, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    .line 1009
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_BYPASS_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 986
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 15

    .line 1022
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v1, v2, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    .line 1029
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1038
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenBypassCameraTask:[preview] [UnExpected camera Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1034
    :pswitch_0
    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->FRONT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    goto :goto_0

    .line 1031
    :pswitch_1
    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1044
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const-string v6, "BypassCamera"

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1702(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 1045
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_1

    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Open BypassCamera. facing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1046
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->open(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1054
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    new-instance v5, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    invoke-direct {v5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;-><init>()V

    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2002(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    .line 1055
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    new-instance v5, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {v5, v6, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2102(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    .line 1056
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    new-instance v5, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {v5, v6, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1058
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    move-result-object v6

    new-instance v7, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotFreeCallbackImpl;

    invoke-direct {v7, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotFreeCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    .line 1056
    invoke-virtual {v1, v5, v6, v7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setPhotoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;)V

    .line 1061
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    new-instance v5, Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {v5, v6, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    new-instance v6, Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;

    invoke-direct {v6, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v1, v5, v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setBurstCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;)V

    .line 1065
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1066
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 1067
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_2

    new-array v2, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeToVideoMode() preview:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " video:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " stabilizer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hdr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1067
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1073
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1075
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v6

    .line 1076
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v7

    .line 1077
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v8

    .line 1074
    invoke-static {v5, v6, v7, v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2700(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1078
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1079
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v7

    .line 1080
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v1

    .line 1073
    invoke-virtual {v2, v5, v6, v7, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToVideoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_1
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1082
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1083
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void

    .line 1087
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4

    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeToPhotoMode() preview:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " picture:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1087
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1091
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    new-instance v5, Landroid/util/Size;

    .line 1092
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1093
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/util/Size;

    .line 1094
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1095
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1096
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v7

    .line 1091
    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->changeToPhotoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;Landroid/util/Size;Landroid/util/Size;I)V
    :try_end_2
    .catch Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1104
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1300(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1108
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v2, v5, :cond_5

    const-string v2, "android.permission.CAMERA"

    .line 1112
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Camera permission is not granted, so pre-capture is refused."

    .line 1115
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v3

    .line 1120
    :goto_2
    sget-object v5, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1128
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenBypassCameraTask():[FastCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->mRequestFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v5, v3

    goto :goto_3

    :pswitch_3
    move v5, v4

    :goto_3
    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 1133
    sget-object v2, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 1134
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v2

    .line 1135
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    new-instance v14, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 1137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-instance v11, Landroid/graphics/Rect;

    .line 1141
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1142
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v11, v4, v4, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    .line 1135
    invoke-virtual {v5, v14}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 1145
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshotReady(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1146
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 1152
    new-instance p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v2, v5}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 1153
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1154
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1155
    new-instance p0, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    new-array v2, v3, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1156
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 1157
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_7
    return-void

    .line 1098
    :catch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$2900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1099
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void

    :catch_2
    move-exception v0

    .line 1048
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1049
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1702(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 1050
    new-array p0, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open BypassCamera. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    .line 1014
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
