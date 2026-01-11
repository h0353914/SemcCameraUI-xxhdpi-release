.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectRunnable"
.end annotation


# instance fields
.field private height:I

.field private mYuvBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->width:I

    .line 385
    iput p3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->height:I

    .line 386
    iput-object p4, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmIsStarted(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 396
    const-string v0, "Starting detection"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->-$$Nest$fgetmInputWidth(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->width:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->-$$Nest$fgetmInputHeight(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->height:I

    if-eq v0, v1, :cond_3

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->width:I

    iget v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->initialize(II)V

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 407
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 410
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmNativeWrapper(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->width:I

    iget v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->height:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v3

    .line 411
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getFrame()[B

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getShrinkRatio()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    move-result-object v4

    .line 410
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->shrinkYvu420Sp([BII[BLcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;)V

    .line 414
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;-><init>()V

    .line 415
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmNativeWrapper(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    move-result-object v5

    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectWidth()I

    move-result v6

    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectHeight()I

    move-result v7

    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getFrame()[B

    move-result-object v8

    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmRoll(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)I

    move-result v9

    move-object v10, v0

    .line 415
    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->detect(II[BILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z

    .line 418
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_4

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detect result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 423
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmResultScheduler(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmResultScheduler(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 432
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;->onDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V

    .line 437
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->-$$Nest$mpostGetFrame(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    return-void
.end method
