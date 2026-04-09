.class public Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;,
        Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaEncoder"

.field private static final THREAD_NAME_DATA_WRITE_FOR_EACH_STREAMS:Ljava/lang/String; = "ME#WriteData"

.field private static final THREAD_NAME_MAIN_TASK:Ljava/lang/String; = "ME#MainTask"

.field private static final THREAD_NAME_WAIT_TO_COMPLETE_ENCODING:Ljava/lang/String; = "ME#WaitFinish"

.field private static TRACE:Z = true


# instance fields
.field private final mEncodedDataWriteListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

.field private mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

.field private final mMainTask:Ljava/lang/Runnable;

.field private mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

.field private mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

.field private mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mWaitRequestFinishSignalTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;Ljava/lang/String;Ljava/io/FileDescriptor;Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    .line 255
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    invoke-direct {v1, p4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;)V

    :goto_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 63
    new-instance p2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    invoke-direct {p2, p3, p4, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;ILcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    goto :goto_1

    .line 66
    :cond_1
    new-instance p3, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    invoke-direct {p3, p2, p4, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    .line 70
    :goto_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 71
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    const-string p1, "ME#WriteData"

    .line 72
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length p2, p2

    .line 73
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildPoolExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private shutdownEncodedDataThreadPool()V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->shutdownEncodedDataThreadPool()V

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->releaseInputDataSource()V

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->releaseEncoders()V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->releaseMuxer()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "IllegalStateException occur at releaseMuxer()."

    .line 108
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method releaseEncoders()V
    .locals 3

    .line 327
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "releaseEncoders() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 329
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2

    const-string p0, "releaseEncoders() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method releaseInputDataSource()V
    .locals 3

    .line 347
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 348
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method releaseMuxer()V
    .locals 1

    .line 359
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "releaseMuxer() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->release()V

    .line 361
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_1

    const-string p0, "releaseMuxer() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method sendOnFinishedEvent(Z)V
    .locals 1

    .line 394
    monitor-enter p0

    const/4 v0, 0x0

    .line 395
    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 396
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    if-eqz v0, :cond_0

    .line 398
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->notifyOnFinished(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 396
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method sendOnStartedEvent()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->notifyOnStarted()V

    :cond_0
    return-void
.end method

.method public setLocation(FF)V
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setLocation(FF)V

    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setMaxDuration(J)V

    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setMaxFileSize(J)V

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "ME#MainTask"

    .line 77
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startEncodedDataWriteTasks()V
    .locals 9

    .line 295
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "startEncodedDataWriteTasks() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 297
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    iget-object v7, v3, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    .line 301
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;Ljava/lang/String;)V

    .line 297
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2

    const-string p0, "startEncodedDataWriteTasks() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method startEncoders()V
    .locals 3

    .line 311
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "startEncoders() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 313
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2

    const-string p0, "startEncoders() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method startInputDataSource()V
    .locals 3

    .line 335
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 336
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method startMediaMuxerAfterEncodedFormatIsFixed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 283
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "startMediaMuxer() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 286
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_1

    const-string v0, "muxer.start E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->start()V

    .line 288
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_2

    const-string v0, "muxer.start X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 290
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 291
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_3

    const-string p0, "startMediaMuxer() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public stop()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 93
    :cond_0
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1

    .line 95
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopEncoders()V
    .locals 3

    .line 319
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "stopEncoders() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 321
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2

    const-string p0, "stopEncoders() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method stopInputDataSource()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 342
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method stopMuxer()V
    .locals 1

    .line 353
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "stopMuxer() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 354
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->stop()V

    .line 355
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_1

    const-string p0, "stopMuxer() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method waitToCompleteEncoding()V
    .locals 3

    .line 365
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "waitToCompleteEncoding() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string v0, "ME#WaitFinish"

    .line 366
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 372
    :try_start_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_1

    const-string v2, "EncoderFinishSignal.await"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 373
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 374
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2

    const-string p0, "EncoderFinishSignal.await FINISHED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "mEncoderFinishSignal is interrupted"

    .line 377
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 380
    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 381
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 384
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_3

    const-string p0, "waitToCompleteEncoding() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
