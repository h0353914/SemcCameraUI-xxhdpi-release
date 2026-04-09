.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;
.super Ljava/lang/Object;
.source "EncodedDataWriteTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;
    }
.end annotation


# static fields
.field private static final OUTPUTBUFFER_TIMEOUT_NANOSECONDS:J = 0x5f5e100L

.field public static final TAG:Ljava/lang/String; = "EncodedDataWriteTask"

.field private static TRACE:Z = false


# instance fields
.field private final mCodec:Landroid/media/MediaCodec;

.field private final mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

.field private final mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

.field private mMuxerIndex:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    .line 46
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    return-void
.end method

.method private awaitEncoderFormat()Z
    .locals 7

    .line 150
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " awaitEncoderFormat E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 151
    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 153
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 154
    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x5f5e100

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    .line 158
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INFO_OUTPUT_FORMAT_CHANGED"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v2

    .line 162
    :cond_3
    sget-boolean v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v4, :cond_1

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " INFO_OUTPUT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_4
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v0, :cond_5

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " awaitEncoderFormat X"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method private static canceled()Z
    .locals 1

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->awaitEncoderFormat()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    monitor-enter v3

    .line 63
    :try_start_0
    sget-boolean v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    new-array v4, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ADD TRACK ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "): E"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    .line 65
    sget-boolean v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v4, :cond_2

    new-array v4, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ADD TRACK ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "): X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 66
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    if-eqz v3, :cond_3

    .line 69
    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    invoke-interface {v3, v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;->onEncoderFormatChanged(Landroid/media/MediaFormat;)V

    .line 72
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 76
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v3, 0x5f5e100

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 88
    sget-boolean v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v2, :cond_4

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " INFO_TRY_AGAIN_LATER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 89
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v0, :cond_d

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CANCELED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    if-ltz v2, :cond_a

    .line 98
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_6

    .line 100
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/2addr v3, v4

    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 103
    :cond_6
    sget-boolean v3, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v3, :cond_7

    new-array v3, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " PULL SAMPLE DATA presentationTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " flag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 107
    :cond_7
    aget-object v3, v0, v2

    .line 109
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    goto :goto_1

    .line 116
    :cond_8
    iget-object v7, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    monitor-enter v7

    .line 117
    :try_start_2
    iget-object v8, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    iget v9, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    invoke-virtual {v8, v9, v3, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 118
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 123
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 124
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v0, :cond_d

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CANCELED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 128
    :cond_9
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    .line 130
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v0, :cond_d

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " BUFFER_FLAG_END_OF_STREAM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 118
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_a
    const/4 v3, -0x3

    if-ne v2, v3, :cond_c

    .line 136
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v0, :cond_b

    new-array v0, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 140
    sget-boolean v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v2, :cond_3

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " INFO_OUTPUT_FORMAT_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " occurred. Maybe camera server is dead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    if-eqz v0, :cond_e

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;->onEncoderFinished()V

    :cond_e
    return-void

    :catchall_1
    move-exception p0

    .line 66
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
