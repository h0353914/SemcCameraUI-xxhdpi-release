.class public Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;
    }
.end annotation


# static fields
.field private static final EXPECTED_OVERHEAD:F = 0.95f

.field private static final MIN_DURATION_MS:I = 0x64


# instance fields
.field private final mFile:Ljava/io/File;

.field private mFirstFramePresentationTimeUs:[J

.field private mIsFirstFrameArrived:[Z

.field private mLastProgressTimeUs:[J

.field private final mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;

.field private mMaxDurationUs:J

.field private mMaxFileSize:J

.field private mMaxLimitationReached:Z

.field private final mMuxer:Landroid/media/MediaMuxer;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;ILcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 44
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxDurationUs:J

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxLimitationReached:Z

    .line 68
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFile:Ljava/io/File;

    .line 70
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;

    const/4 p1, 0x1

    .line 71
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mIsFirstFrameArrived:[Z

    .line 72
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFirstFramePresentationTimeUs:[J

    .line 73
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 44
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxDurationUs:J

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxLimitationReached:Z

    .line 57
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    .line 58
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFile:Ljava/io/File;

    .line 59
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;

    const/4 p1, 0x1

    .line 60
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mIsFirstFrameArrived:[Z

    .line 61
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFirstFramePresentationTimeUs:[J

    .line 62
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFirstFramePresentationTimeUs:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 129
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mIsFirstFrameArrived:[Z

    .line 130
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFirstFramePresentationTimeUs:[J

    .line 131
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    :cond_0
    return p1
.end method

.method public release()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->release()V

    return-void
.end method

.method public setLocation(FF)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void
.end method

.method public setMaxDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minmimum duration too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 85
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxDurationUs:J

    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const v0, 0x3f733333    # 0.95f

    long-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-long p1, p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 99
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxFileSize:J

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 168
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v0, 0x0

    .line 170
    iput v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :catch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    iget-wide p2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide p2, p0, p1

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide v0, v0, p1

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFirstFramePresentationTimeUs:[J

    aget-wide v4, v4, p1

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 185
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxLimitationReached:Z

    if-eqz v0, :cond_1

    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide v0, v0, p1

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxDurationUs:J

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 191
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxLimitationReached:Z

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;->onMaxDurationReached()V

    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxFileSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxFileSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 198
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;->onMaxFileSizeReached()V

    .line 199
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxLimitationReached:Z

    return-void

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mIsFirstFrameArrived:[Z

    aget-boolean v2, v0, p1

    if-nez v2, :cond_4

    .line 205
    aput-boolean v1, v0, p1

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFirstFramePresentationTimeUs:[J

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide v2, v0, p1

    .line 209
    :cond_4
    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mFirstFramePresentationTimeUs:[J

    aget-wide v4, v0, p1

    sub-long/2addr v2, v4

    iput-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 216
    :catch_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mMaxLimitationReached:Z

    .line 217
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;->onStorageFull()V

    .line 220
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide v0, p2, p1

    .line 222
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide p0, p0, p1

    invoke-interface {p2, p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;->onProgress(J)V

    :cond_5
    return-void
.end method
