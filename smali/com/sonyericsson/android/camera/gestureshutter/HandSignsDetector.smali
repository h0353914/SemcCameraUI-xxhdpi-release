.class public Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;
    }
.end annotation


# static fields
.field private static final DEBUG_FPS_CALCULATE_INTERVAL_MILLIS:I = 0xbb8

.field private static final DETECT_FRAME_RATE:I = 0xa

.field private static final MAX_DETECT_FRAME_HEIGHT:I = 0x1e0

.field private static final MAX_DETECT_FRAME_WIDTH:I = 0x280

.field private static final NV21_BUFFER_SIZE_MULTIPLIER:F = 1.5f

.field public static final TAG:Ljava/lang/String; = "HandSignsDetector"


# instance fields
.field private mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

.field private final mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

.field private final mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

.field private final mGetFrameTask:Ljava/lang/Runnable;

.field private mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

.field private mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field private mIsStarted:Z

.field private final mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

.field private mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

.field private final mResultScheduler:Landroid/os/Handler;

.field private mRoll:I

.field private mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDetectContext(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageCallback(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageRetriever(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStarted(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultScheduler(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoll(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorker(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostDetect(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postDetect(IILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostGetFrame(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;Landroid/os/Handler;)V
    .locals 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 179
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    .line 181
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    .line 193
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    .line 210
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    .line 237
    new-instance p1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    .line 238
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v0, "HandSignsDetector"

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 239
    iput-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-void
.end method

.method private postDetect(IILjava/nio/ByteBuffer;)V
    .locals 1

    .line 331
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 332
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 334
    const-string p0, "detection posted"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private postGetFrame()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->hit()J

    move-result-wide v0

    .line 324
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Get frame posted with delay: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDetectHeight()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDetectWidth()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    .line 310
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :catch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->release()V

    return-void
.end method

.method public setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 2

    .line 287
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$3;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 p1, 0xb4

    .line 298
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_0

    .line 301
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Abnormal orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0x5a

    .line 295
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 292
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x10e

    .line 289
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    .line 303
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Rotation updated to:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 263
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->reset()V

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method public stopDetect()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V

    .line 280
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    const/4 v1, 0x0

    .line 281
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 282
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
