.class Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;
.super Ljava/lang/Object;
.source "ObjectTrackingResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

.field final synthetic val$objectTrackingResult:Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;->val$objectTrackingResult:Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker$1;->val$objectTrackingResult:Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;->onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    :cond_0
    return-void
.end method
