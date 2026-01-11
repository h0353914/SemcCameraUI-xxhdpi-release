.class Lcom/sonymobile/android/media/internal/VideoTrack;
.super Lcom/sonymobile/android/media/internal/Track;
.source "VideoTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;,
        Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;
    }
.end annotation


# static fields
.field private static final ENCODER_REQUEST_SYNC_FRAME:I = 0x0

.field private static final I_FRAME_INTERVAL:I = 0x1

.field static final TAG:Ljava/lang/String; = "VideoTrack"

.field private static final TIME_OUT_STOPPING_MILLISECONDS:J = 0x3e8L

.field private static final WAIT_FOR_MEDIA_MUXER_START_TIMED_OUT_US:J = 0x989680L


# instance fields
.field private mBitRateMode:I

.field private final mCallback:Landroid/os/Handler;

.field private final mCodecHandler:Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

.field private mColorRange:I

.field private mColorStandard:I

.field private mColorTransfer:I

.field protected mEncodingLevel:I

.field protected mEncodingProfile:I

.field private mFirstCodecConfigFrame:Z

.field private mFirstVideoFrameTimeUs:J

.field private mFrameDropCounter:I

.field private mFrameInterval:J

.field private mFrameRate:I

.field private mHeight:I

.field private mKeyFrameRequested:Z

.field private mLastRecordedVideoTimestampUs:J

.field private final mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

.field private mPauseResumeFlag:Z

.field private mRecordedDurationAtStopUs:J

.field private mSourceSurface:Landroid/view/Surface;

.field private mVideoMime:Ljava/lang/String;

.field private mVideoOffset:J

.field private mWaitForKeyFrame:Z

.field private mWidth:I

.field private final videoMimeTypes:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/VideoTrack;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCodecHandler(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstCodecConfigFrame(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstVideoFrameTimeUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameDropCounter(Lcom/sonymobile/android/media/internal/VideoTrack;)I
    .locals 0

    iget p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameDropCounter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameInterval(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyFrameRequested(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRecordedVideoTimestampUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMuxerHandler(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPauseResumeFlag(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordedDurationAtStopUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoMime(Lcom/sonymobile/android/media/internal/VideoTrack;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoOffset(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitForKeyFrame(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFirstCodecConfigFrame(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFirstVideoFrameTimeUs(Lcom/sonymobile/android/media/internal/VideoTrack;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrameDropCounter(Lcom/sonymobile/android/media/internal/VideoTrack;I)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameDropCounter:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKeyFrameRequested(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRecordedVideoTimestampUs(Lcom/sonymobile/android/media/internal/VideoTrack;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPauseResumeFlag(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoOffset(Lcom/sonymobile/android/media/internal/VideoTrack;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitForKeyFrame(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V
    .locals 7

    .line 89
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/Track;-><init>()V

    .line 49
    const-string/jumbo v5, "video/hevc"

    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    const-string v0, ""

    const-string/jumbo v1, "video/3gpp"

    const-string/jumbo v2, "video/avc"

    const-string/jumbo v3, "video/mp4v-es"

    const-string/jumbo v4, "video/x-vnd.on2.vp8"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->videoMimeTypes:[Ljava/lang/String;

    const/16 v0, 0x1e

    .line 67
    iput v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingProfile:I

    .line 69
    iput v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingLevel:I

    const/4 v2, -0x1

    .line 70
    iput v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBitRateMode:I

    .line 71
    iput v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorStandard:I

    .line 72
    iput v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    .line 73
    iput v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    const v2, 0xf4240

    .line 74
    div-int/2addr v2, v0

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J

    const-wide/16 v2, -0x1

    .line 76
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J

    .line 77
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J

    const-wide/16 v2, 0x0

    .line 78
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J

    .line 79
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z

    .line 81
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J

    .line 83
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z

    .line 84
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z

    .line 91
    new-instance v0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;-><init>(Lcom/sonymobile/android/media/internal/VideoTrack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    .line 92
    new-instance p2, Lcom/sonymobile/android/media/internal/Track$EventHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/sonymobile/android/media/internal/Track$EventHandler;-><init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    .line 93
    new-instance p2, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;-><init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    .line 95
    new-instance p2, Lcom/sonymobile/android/media/internal/HandlerHelper;

    invoke-direct {p2}, Lcom/sonymobile/android/media/internal/HandlerHelper;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    .line 96
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    .line 98
    sget-object p1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method


# virtual methods
.method protected doPause()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected doPrepare()V
    .locals 12

    .line 155
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 157
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    iget v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    iget v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    .line 158
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 159
    const-string v3, "bitrate"

    iget v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingBitRate:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 160
    const-string v3, "frame-rate"

    iget v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    const-string v3, "i-frame-interval"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 162
    iget v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mOperatingRate:I

    if-lez v3, :cond_0

    .line 163
    const-string v3, "operating-rate"

    iget v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mOperatingRate:I

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 165
    const-string/jumbo v3, "ts-schema"

    const-string v5, "android.generic.1+0"

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    const-string v3, "priority"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 169
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingProfile:I

    const/16 v3, 0x2d0

    const/16 v5, 0x500

    const-string v6, "level"

    const-string v7, "profile"

    if-nez v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    const-string/jumbo v8, "video/avc"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    if-lt v1, v5, :cond_1

    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    if-lt v1, v3, :cond_1

    const/16 v1, 0x8

    .line 172
    invoke-virtual {v2, v7, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v2, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 178
    :goto_0
    invoke-virtual {v2, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v2, v7, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 183
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingLevel:I

    if-nez v1, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {v2, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 186
    :cond_4
    :goto_1
    const-string v1, "color-format"

    const v6, 0x7f000789

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 189
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorStandard:I

    const/4 v6, 0x2

    const-string v7, "color-range"

    const-string v8, "color-transfer"

    const-string v9, "color-standard"

    const/4 v10, 0x4

    if-ltz v1, :cond_5

    iget v11, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    if-ltz v11, :cond_5

    iget v11, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    if-ltz v11, :cond_5

    .line 190
    invoke-virtual {v2, v9, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 191
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    invoke-virtual {v2, v8, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 192
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    invoke-virtual {v2, v7, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    .line 194
    :cond_5
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    if-lt v1, v5, :cond_6

    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    if-lt v1, v3, :cond_6

    .line 195
    invoke-virtual {v2, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    .line 198
    :cond_6
    invoke-virtual {v2, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_2
    const/4 v1, 0x3

    .line 201
    invoke-virtual {v2, v8, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 203
    invoke-virtual {v2, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 206
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->checkFormat(Landroid/media/MediaCodecList;Landroid/media/MediaFormat;Ljava/lang/String;)Z

    move-result v1

    const-string v3, "VideoTrack"

    if-eqz v1, :cond_9

    .line 209
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;-><init>(Lcom/sonymobile/android/media/internal/VideoTrack;Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback-IA;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 223
    :try_start_1
    iget v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBitRateMode:I

    if-ltz v0, :cond_7

    .line 224
    const-string v1, "bitrate-mode"

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    if-nez v0, :cond_8

    .line 235
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    goto :goto_4

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 239
    :goto_4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    goto :goto_5

    .line 228
    :catch_0
    const-string v0, "Failed to configure MediaCodec"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v4, v10, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    move-exception v0

    .line 215
    const-string v1, "Unable to create encoder"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v4, v10, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 241
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video format is not supported "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v4, v10, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    :goto_5
    return-void
.end method

.method protected doRelease()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->removeMessages(I)V

    return-void
.end method

.method protected doReset()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne v0, v1, :cond_0

    .line 279
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 280
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v0, v1, :cond_1

    .line 282
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 284
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occurred. Maybe MediaCodec is released."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTrack"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected doResume(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 271
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected doStart()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameDropCounter:I

    const-wide/16 v1, -0x1

    .line 251
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J

    .line 252
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J

    .line 253
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z

    .line 254
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z

    .line 255
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z

    .line 257
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method protected doStop()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v0}, Lcom/sonymobile/android/media/internal/ClockInterface;->getDurationAtStopUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J

    .line 298
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    const/16 v0, 0x6f

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected doWriteOutputBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v0, v1, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->isMuxerStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;

    .line 312
    iget-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    iget v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 320
    :cond_1
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_2

    goto :goto_1

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerTrackIndex:I

    iget-object v4, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v1, v4}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 329
    :goto_1
    iget-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    if-nez v1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    iget v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 333
    :cond_3
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 337
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 339
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerTrackIndex:I

    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->endTrack(I)V

    :cond_4
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    return-object p0
.end method

.method setBitRateMode(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBitRateMode:I

    return-void
.end method

.method setColorAspects(III)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorStandard:I

    .line 136
    iput p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    .line 137
    iput p3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    return-void
.end method

.method setEncodingProfileLevel(II)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingProfile:I

    .line 127
    iput p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingLevel:I

    return-void
.end method

.method setFrameRate(I)V
    .locals 2

    .line 120
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    if-eqz p1, :cond_0

    const v0, 0xf4240

    .line 121
    div-int/2addr v0, p1

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J

    return-void
.end method

.method setInputSurface(Landroid/view/Surface;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    .line 107
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setMediaMuxerStarted()V
    .locals 1

    .line 349
    invoke-super {p0}, Lcom/sonymobile/android/media/internal/Track;->setMediaMuxerStarted()V

    .line 350
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method setVideoEncoder(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->videoMimeTypes:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method setVideoSize(II)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    .line 115
    iput p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    return-void
.end method
