.class Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestSnapshotReadyAfterAfParametersReflected"
.end annotation


# instance fields
.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 7741
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7742
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public onReflected(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)V
    .locals 2

    .line 7747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerLock(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7748
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCaptureResultCheckerSet(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7749
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7750
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7749
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
