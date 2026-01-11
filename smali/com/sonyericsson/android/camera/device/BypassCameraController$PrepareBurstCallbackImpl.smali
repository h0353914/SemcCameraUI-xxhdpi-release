.class Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareBurstCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onPrepareBurstDone(Z)V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onPrepareBurstDone(Z)V

    return-void
.end method
