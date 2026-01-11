.class Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotReadyCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onSnapshotReadyDone(ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;I)V
    .locals 8

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$msetSnapshotReadyWaiting(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V

    .line 937
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mawaitImageReaderReady(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 940
    sget-object v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    invoke-virtual {p5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result p5

    aget p5, v0, p5

    const/4 v0, 0x1

    if-eq p5, v0, :cond_1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    .line 949
    sget-object p5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->INVALID:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    goto :goto_0

    .line 945
    :cond_0
    sget-object p5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->ON_REQUEST:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    goto :goto_0

    .line 942
    :cond_1
    sget-object p5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->ALREADY_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    :goto_0
    move-object v6, p5

    .line 953
    iget-object p5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmBypassCameraRequestExecutor(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onSnapshotReadyDone(Ljava/util/concurrent/ExecutorService;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;I)V

    return-void
.end method
