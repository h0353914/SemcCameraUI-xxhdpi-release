.class Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSurfaceTask"
.end annotation


# instance fields
.field private final mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1259
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1260
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    .line 1261
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 1255
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2502(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    .line 1266
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
