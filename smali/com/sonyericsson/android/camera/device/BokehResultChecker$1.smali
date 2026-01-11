.class Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;
.super Ljava/lang/Object;
.source "BokehResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/BokehResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

.field final synthetic val$result:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/BokehResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;->val$result:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BokehResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BokehResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/BokehResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BokehResultChecker$1;->val$result:Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;->onBokehResultChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;)V

    :cond_0
    return-void
.end method
