.class public abstract Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;
.super Ljava/lang/Object;
.source "AudioSampleDataSourceBase.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# static fields
.field protected static final INPUTBUFFER_TIMEOUT_MICROSECONDS:J = 0x186a0L

.field protected static final NOTIFICATION_COUNT_PER_SECOND:I = 0xa


# instance fields
.field private volatile mAlreadyEos:Z

.field private final mAudioBuffer:[B

.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final mCodec:Landroid/media/MediaCodec;

.field private final mMinBufferSize:I

.field private final mNotificationPeriod:I

.field private mSampleCount:J

.field private final mSampleDataBytes:I

.field private final mSampleRate:I

.field private final mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;


# direct methods
.method static bridge synthetic -$$Nest$mreadSampleData(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->readSampleData(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;III)V
    .locals 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mCodec:Landroid/media/MediaCodec;

    .line 58
    iput p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    .line 59
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->bytesInFrame(I)I

    move-result p1

    mul-int/2addr p1, p3

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleDataBytes:I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    move v3, p1

    .line 64
    invoke-static {p2, v3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    .line 66
    new-instance p1, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->getBufferSize()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    .line 70
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->getAudioBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    .line 77
    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mNotificationPeriod:I

    .line 79
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string p2, "AudioSampleDataReaderThread"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-void

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AudioRecord failed to initialize. Parameters might be invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MediaCodec cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private bytesInFrame(I)I
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Specified Audio format is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return p0
.end method

.method protected static isCancelled()Z
    .locals 1

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private readSampleData(Z)V
    .locals 5

    .line 209
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAlreadyEos:Z

    if-eqz v0, :cond_1

    .line 210
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 211
    const-string p0, "Already End of Stream"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    .line 222
    const-string p0, "ERROR_BAD_VALUE"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_3
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    .line 228
    const-string p1, "ERROR_INVALID_OPERATION"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    move p1, v4

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    invoke-virtual {p0, v1, v0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->pushToEncoder([BIZ)J

    move-result-wide v0

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->addSampleCount(J)V

    if-eqz p1, :cond_5

    .line 236
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAlreadyEos:Z

    :cond_5
    :goto_1
    return-void
.end method

.method private requestToReadSampleData(Z)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected addSampleCount(J)V
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    return-void
.end method

.method protected getAudioBufferSize()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected getAudioRecord()Landroid/media/AudioRecord;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method protected getBackgroundWorker()Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object p0
.end method

.method protected getBufferSize()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected getCodec()Landroid/media/MediaCodec;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method protected getMinBufferSize()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    return p0
.end method

.method protected getPresentationTime(J)J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    add-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    mul-long/2addr v0, p1

    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method protected getSampleDataBytes()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleDataBytes:I

    return p0
.end method

.method protected getSampleRate()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    return p0
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 0

    const/4 p1, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->readSampleData(Z)V

    return-void
.end method

.method protected abstract pushToEncoder([BIZ)J
.end method

.method public release()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 86
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V

    .line 87
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 88
    new-array p0, p0, [Ljava/lang/String;

    const-string/jumbo v0, "worker.quit FINISHED"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 92
    const-string/jumbo p0, "worker.quit INTERRUPTED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mNotificationPeriod:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "setPositionNotificationPeriod:failed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V

    .line 120
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 121
    new-array p0, v0, [Ljava/lang/String;

    const-string/jumbo v0, "worker.quit FINISHED"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 125
    const-string/jumbo p0, "worker.quit INTERRUPTED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
