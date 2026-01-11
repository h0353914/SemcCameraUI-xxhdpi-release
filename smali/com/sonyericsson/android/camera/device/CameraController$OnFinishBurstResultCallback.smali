.class Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFinishBurstResultCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 6676
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onFinishBurstDone()V
    .locals 0

    .line 6680
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFinishBurstResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onFinishBurstDone()V

    return-void
.end method
