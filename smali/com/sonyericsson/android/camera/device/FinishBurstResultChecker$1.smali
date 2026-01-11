.class Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;
.super Ljava/lang/Object;
.source "FinishBurstResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "onFinishBurstDone"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;->onFinishBurstDone()V

    :cond_0
    return-void
.end method
