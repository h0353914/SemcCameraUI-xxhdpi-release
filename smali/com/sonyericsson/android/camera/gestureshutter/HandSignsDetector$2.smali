.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;


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

    .line 211
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetrieved(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmIsStarted(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 220
    iget-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmImageRetriever(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V

    .line 221
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p0, p2, p3, p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$mpostDetect(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V

    .line 223
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
