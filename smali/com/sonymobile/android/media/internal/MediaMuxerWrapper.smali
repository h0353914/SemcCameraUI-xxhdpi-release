.class Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;
    }
.end annotation


# static fields
.field private static final EXPECTED_OVERHEAD:F = 0.95f

.field private static final EXTERNAL_TRACK_ID_AUDIO:I = 0x2

.field private static final EXTERNAL_TRACK_ID_OTHER:I = 0x0

.field private static final EXTERNAL_TRACK_ID_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"


# instance fields
.field private externalToInternalTrackIdMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private mLastProgressTimeUs:[J

.field private mLimitReached:[Z

.field private mMaxDurationMs:I

.field private mMaxFileSizeBytes:J

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

.field private mRequestProgressInfoIntervalUs:J

.field private mTotalBuffer:J

.field private mTrackTimeUs:[J


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p2, v1, :cond_1

    const/4 v0, 0x2

    .line 98
    :cond_1
    new-instance p2, Landroid/media/MediaMuxer;

    invoke-direct {p2, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    .line 99
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    .line 100
    iput-object p3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    .line 101
    new-array p1, v1, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    .line 102
    new-array p1, v1, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    .line 103
    new-instance p1, Landroid/util/ArrayMap;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    .line 104
    new-array p1, v1, [Z

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p3, v1, :cond_1

    const/4 v0, 0x2

    .line 74
    :cond_1
    new-instance p3, Landroid/media/MediaMuxer;

    invoke-direct {p3, p2, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 76
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    .line 80
    :goto_1
    iput-object p4, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    .line 81
    new-array p1, v1, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    .line 82
    new-array p1, v1, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    .line 83
    new-instance p1, Landroid/util/ArrayMap;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    .line 84
    new-array p1, v1, [Z

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    return-void
.end method


# virtual methods
.method addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 143
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    .line 144
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    .line 145
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    .line 147
    :cond_0
    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    const-string v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    .line 151
    :cond_1
    const-string/jumbo v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 154
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method endTrack(I)V
    .locals 1

    shl-int/lit8 p1, p1, 0x1c

    .line 160
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    or-int/lit16 p1, p1, 0x3e8

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onInfo(II)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method setLocation(FF)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void
.end method

.method setMaxDuration(I)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxDurationMs:I

    return-void
.end method

.method setMaxFileSize(J)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 214
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

    .line 217
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    return-void
.end method

.method setOrientationHint(I)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method setRequestProgressInfoInterval(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 116
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    return-void
.end method

.method public start()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const-wide/16 v3, 0x0

    .line 121
    aput-wide v3, v2, v1

    .line 122
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    const-string v1, "MediaMuxerWrapper"

    const-string v2, "exception when stopping mediaMuxer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onStopError()V

    :goto_0
    return-void
.end method

.method writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    .line 165
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_3

    .line 167
    iget v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxDurationMs:I

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-lez v1, :cond_0

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v5, v2

    iget v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxDurationMs:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-lez v1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onMaxDurationReached()V

    .line 169
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v4, p0, v0

    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_2

    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_2

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iget-wide v9, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    cmp-long v1, v7, v9

    if-gtz v1, :cond_1

    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    .line 174
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iget-wide v9, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_2

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onMaxFileSizeReached()V

    .line 176
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v4, p0, v0

    return-void

    .line 181
    :cond_2
    :try_start_0
    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    .line 182
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 183
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    iget-wide v7, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide v7, p2, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    const-string p2, "Muxer can not write"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onWriteError()V

    .line 187
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v4, p2, v0

    .line 190
    :goto_0
    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    cmp-long p2, v7, v5

    if-ltz p2, :cond_3

    .line 191
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide v6, p2, v0

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    cmp-long p2, v4, v6

    if-lez p2, :cond_3

    shl-int/lit8 p1, p1, 0x1c

    .line 194
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide v6, p2, v0

    sub-long/2addr v4, v6

    div-long/2addr v4, v2

    .line 196
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    or-int/lit16 p1, p1, 0x3e9

    long-to-int v1, v4

    invoke-interface {p2, p1, v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onInfo(II)V

    .line 198
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    iget-wide p1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide p1, p0, v0

    :cond_3
    return-void
.end method
