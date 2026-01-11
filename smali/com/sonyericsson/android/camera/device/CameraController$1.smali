.class Lcom/sonyericsson/android/camera/device/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->startAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;ZZZLandroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 542
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$monAutoFocus(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    return-void
.end method
