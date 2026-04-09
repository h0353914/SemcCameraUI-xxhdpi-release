.class public Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;
.super Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;
.source "MutableAudioSampleDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;
    }
.end annotation


# static fields
.field private static final AUDIO_READ_INTERVAL_MILLIS:J = 0x64L

.field private static final AUDIO_READ_TIME_OUT_DURATION_MILLIS:J = 0x1388L

.field private static final BUFFER_DURATION_MILLIS:I = 0x7d0


# instance fields
.field private mAudioRecordBuferSize:I

.field private final mGarbageBuffer:Ljava/nio/ByteBuffer;

.field private final mMinAudioBufferCount:I

.field private final mMuteDurationBytes:I

.field private mMuteDurationRemainingBytes:I

.field private mNotificationCounter:I

.field private final mSilentDurationBytes:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;IIIII)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;-><init>(Landroid/media/MediaCodec;III)V

    if-ltz p5, :cond_1

    if-gez p6, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleRate()I

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleDataBytes()I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/2addr p1, p5

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationBytes:I

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleRate()I

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleDataBytes()I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/2addr p1, p6

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mSilentDurationBytes:I

    int-to-double p1, p5

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    div-double/2addr p1, p3

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMinAudioBufferCount:I

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mGarbageBuffer:Ljava/nio/ByteBuffer;

    return-void

    .line 69
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration cannot be negative values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)J
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->enqueueSilentSamples()J

    move-result-wide v0

    return-wide v0
.end method

.method private dequeueBuffer()Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-gez v0, :cond_1

    .line 307
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "  dequeue input buffer failed"

    .line 308
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCodec()Landroid/media/MediaCodec;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v1
.end method

.method private enqueueSilentSamples()J
    .locals 13

    .line 265
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mSilentDurationBytes:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :cond_0
    :goto_0
    if-lez v0, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->dequeueBuffer()Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 272
    array-length v5, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$000(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 273
    :cond_2
    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$000(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I

    move-result v3

    new-array v3, v3, [B

    .line 275
    :cond_3
    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$000(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 277
    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v3, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 278
    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    int-to-long v6, v2

    .line 280
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCurrentPresentationTime(J)J

    move-result-wide v10

    .line 282
    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move v9, v5

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->queueInputBuffer(IIIJI)V

    add-int/2addr v2, v5

    sub-int/2addr v0, v5

    .line 287
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 288
    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " silent bytes are remaining to write"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleDataBytes()I

    move-result p0

    div-int/2addr v2, p0

    int-to-long v0, v2

    return-wide v0
.end method

.method private getCurrentPresentationTime(J)J
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleDataBytes()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getPresentationTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private queueInputBuffer(IIIJI)V
    .locals 7

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 324
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 325
    new-array p0, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  Buffer index "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is queued"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private requestToEnqueueSamples([BZ)V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getBackgroundWorker()Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;[BZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requestToEnqueueSilentSamples()V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getBackgroundWorker()Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$2;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendAudioSamplesToGarbage()V
    .locals 11

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mGarbageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 189
    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mNotificationCounter:I

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMinAudioBufferCount:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 190
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mGarbageBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mGarbageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 193
    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    if-ge v1, v2, :cond_0

    const-string v2, "Could not read enough audio samples."

    .line 194
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 198
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x1388

    cmp-long v2, v7, v9

    if-gez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mGarbageBuffer:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    sub-int/2addr v7, v1

    invoke-virtual {v0, v2, v7, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 205
    new-array v2, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Re-try to read until audio samples are retrieved enough. read-bytes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 208
    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    if-ge v1, v2, :cond_0

    const-wide/16 v7, 0x64

    .line 210
    :try_start_0
    invoke-static {v7, v8, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Interrupt skipping audio samples in mute range."

    .line 212
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    sub-int v0, v1, v0

    if-gez v0, :cond_1

    .line 223
    new-array v0, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read enough audio samples by re-trying. read-bytes:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remain-bytes:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move v0, v3

    .line 228
    :cond_1
    new-array v2, v0, [B

    .line 229
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mGarbageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 230
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->requestToEnqueueSamples([BZ)V

    goto :goto_1

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mGarbageBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 237
    :goto_1
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->requestToEnqueueSilentSamples()V

    return-void
.end method


# virtual methods
.method protected getAudioBufferSize()I
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleRate()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleDataBytes()I

    move-result p0

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method protected getBufferSize()I
    .locals 2

    .line 117
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mAudioRecordBuferSize:I

    if-nez v0, :cond_0

    const/16 v0, 0x7d0

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleRate()I

    move-result v1

    mul-int/2addr v0, v1

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleDataBytes()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mAudioRecordBuferSize:I

    .line 120
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mAudioRecordBuferSize:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getMinBufferSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getMinBufferSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mAudioRecordBuferSize:I

    .line 124
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mAudioRecordBuferSize:I

    return p0
.end method

.method public getCurrentPresentationTimeMillis()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 297
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getPresentationTime(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 2

    .line 108
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mNotificationCounter:I

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMinAudioBufferCount:I

    if-le v0, v1, :cond_0

    .line 109
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->onPeriodicNotification(Landroid/media/AudioRecord;)V

    goto :goto_0

    .line 111
    :cond_0
    iget p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mNotificationCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mNotificationCounter:I

    :goto_0
    return-void
.end method

.method protected pushToEncoder([BIZ)J
    .locals 13

    move-object v7, p0

    move v8, p2

    const/4 v9, 0x0

    move v0, v9

    move v10, v0

    .line 141
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 142
    invoke-direct {v7}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->dequeueBuffer()Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v2, v10

    .line 147
    invoke-direct {v7, v2, v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCurrentPresentationTime(J)J

    move-result-wide v4

    .line 148
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$000(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I

    move-result v0

    sub-int v2, v8, v10

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    add-int/lit8 v3, v10, 0x0

    move-object v11, p1

    invoke-virtual {v2, v11, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 152
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v10, v3

    if-lt v10, v8, :cond_1

    const/4 v0, 0x1

    move v12, v0

    goto :goto_1

    :cond_1
    move v12, v9

    .line 156
    :goto_1
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->queueInputBuffer(IIIJI)V

    move v0, v12

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 160
    invoke-direct {v7}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->dequeueBuffer()Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;

    move-result-object v0

    int-to-long v1, v10

    .line 161
    invoke-direct {v7, v1, v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCurrentPresentationTime(J)J

    move-result-wide v4

    if-eqz v0, :cond_3

    .line 164
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->queueInputBuffer(IIIJI)V

    .line 169
    :cond_3
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getSampleDataBytes()I

    move-result v0

    div-int/2addr v10, v0

    int-to-long v0, v10

    return-wide v0
.end method

.method public startMute()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 96
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "startMute can only be called during recording"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    if-lez v0, :cond_1

    .line 99
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "startMute cannot be called more than once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationBytes:I

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mMuteDurationRemainingBytes:I

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->sendAudioSamplesToGarbage()V

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->mNotificationCounter:I

    return-void
.end method
