.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectRunnable"
.end annotation


# instance fields
.field private height:I

.field private mYuvBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->width:I

    .line 206
    iput p3, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->height:I

    .line 207
    iput-object p4, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Can not use buffer. byte array size: "

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmIsStarted(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmBytesLock(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmYuvBytes(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmYuvBytes(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmYuvBytes(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$mDetect(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;[B)Lcom/google/zxing/Result;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fputmScanResult(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;Lcom/google/zxing/Result;)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmScanResult(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/google/zxing/Result;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmResultScheduler(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmResultScheduler(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 231
    :cond_1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 232
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$fgetmYuvBytes(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", byte buffer size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 232
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 236
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->-$$Nest$mpostGetFrame(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V

    return-void

    :catchall_0
    move-exception p0

    .line 236
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
