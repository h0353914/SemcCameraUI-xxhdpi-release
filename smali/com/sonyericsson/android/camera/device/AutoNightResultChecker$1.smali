.class Lcom/sonyericsson/android/camera/device/AutoNightResultChecker$1;
.super Ljava/lang/Object;
.source "AutoNightResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;->-$$Nest$fgetmIsLastAutoNightDetected(Lcom/sonyericsson/android/camera/device/AutoNightResultChecker;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$AutoNightResultCallback;->onAutoNightResultChanged(Z)V

    :cond_0
    return-void
.end method
