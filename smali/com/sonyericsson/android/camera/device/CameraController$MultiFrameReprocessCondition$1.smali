.class Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->notifyShutter(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

.field final synthetic val$callback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1175
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;->val$callback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1178
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;->val$callback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1179
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;->onShutter(Z)V

    :cond_0
    return-void
.end method
