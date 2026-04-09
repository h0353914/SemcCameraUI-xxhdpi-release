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

    .line 914
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 914
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onSnapshotReadyDone(ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;)V
    .locals 7

    .line 920
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1500(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 923
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onSnapshotReadyDone(Ljava/util/concurrent/ExecutorService;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;)V

    return-void
.end method
