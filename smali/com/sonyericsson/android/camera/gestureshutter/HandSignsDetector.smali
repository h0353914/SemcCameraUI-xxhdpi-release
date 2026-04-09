.class public Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;
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
.method public constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;Landroid/os/Handler;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 173
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    .line 175
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    .line 187
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    .line 230
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    .line 231
    new-instance p1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    .line 232
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v0, "HandSignsDetector"

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 233
    iput-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postDetect(IILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    return-object p0
.end method

.method private postDetect(IILjava/nio/ByteBuffer;)V
    .locals 1

    .line 325
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "detection posted"

    .line 328
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private postGetFrame()V
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->hit()J

    move-result-wide v0

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 320
    new-array p0, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get frame posted with delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDetectHeight()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
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

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
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

    .line 304
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :catch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->release()V

    return-void
.end method

.method public setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 3

    .line 281
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$3;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 295
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p1, 0xb4

    .line 292
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x5a

    .line 289
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_0

    .line 286
    :pswitch_2
    iput v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x10e

    .line 283
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    .line 297
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 298
    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation updated to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->reset()V

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 260
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method public stopDetect()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V

    .line 274
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    const/4 v1, 0x0

    .line 275
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
