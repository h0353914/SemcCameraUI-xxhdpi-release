.class Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;
.super Ljava/lang/Object;
.source "AutoFlashResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

.field final synthetic val$isLastFlashRequired:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->val$isLastFlashRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->val$isLastFlashRequired:Z

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;->onAutoFlashResultChanged(Z)V

    :cond_0
    return-void
.end method
