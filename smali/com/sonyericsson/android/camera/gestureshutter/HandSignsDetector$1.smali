.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    monitor-exit v0

    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$500(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    .line 195
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$400(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 194
    invoke-interface {v1, v2, p0}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    .line 197
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "Get frame requested"

    .line 198
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 200
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
