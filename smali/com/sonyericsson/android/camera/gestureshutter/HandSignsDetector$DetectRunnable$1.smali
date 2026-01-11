.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

.field final synthetic val$result:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;->val$result:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;->val$result:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;->onDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V

    return-void
.end method
