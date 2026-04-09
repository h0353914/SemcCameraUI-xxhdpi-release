.class Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFusionResultChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 2731
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 2731
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onFusionResultChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;)V
    .locals 0

    .line 2734
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onFusionResultChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;)V

    return-void
.end method
