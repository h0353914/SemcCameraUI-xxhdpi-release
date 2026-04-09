.class Lcom/sonymobile/android/media/internal/VideoTrack;
.super Lcom/sonymobile/android/media/internal/Track;
.source "VideoTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;,
        Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;
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
.method constructor <init>(Landroid/os/Handler;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V
    .locals 7

    .line 90
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/Track;-><init>()V

    const-string v0, ""

    const-string v1, "video/3gpp"

    const-string v2, "video/avc"

    const-string v3, "video/mp4v-es"

    const-string v4, "video/x-vnd.on2.vp8"

    const-string v5, "video/hevc"

    const-string v6, "video/x-vnd.on2.vp9"

    .line 50
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->videoMimeTypes:[Ljava/lang/String;

    const/16 v0, 0x1e

    .line 68
    iput v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingProfile:I

    .line 70
    iput v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingLevel:I

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBitRateMode:I

    .line 72
    iput v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorStandard:I

    .line 73
    iput v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    .line 74
    iput v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    .line 75
    iget v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    const v2, 0xf4240

    div-int/2addr v2, v1

    int-to-long v1, v2

    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J

    const-wide/16 v1, -0x1

    .line 77
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J

    .line 78
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J

    .line 80
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z

    .line 82
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J

    .line 84
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z

    .line 85
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z

    .line 92
    new-instance v0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;-><init>(Lcom/sonymobile/android/media/internal/VideoTrack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    .line 93
    new-instance p2, Lcom/sonymobile/android/media/internal/Track$EventHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/sonymobile/android/media/internal/Track$EventHandler;-><init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    .line 94
    new-instance p2, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;-><init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    .line 96
    new-instance p2, Lcom/sonymobile/android/media/internal/HandlerHelper;

    invoke-direct {p2}, Lcom/sonymobile/android/media/internal/HandlerHelper;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    .line 97
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    .line 99
    sget-object p1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/media/internal/VideoTrack;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/android/media/internal/VideoTrack;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/media/internal/VideoTrack;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z

    return p0
.end method

.method static synthetic access$202(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sonymobile/android/media/internal/VideoTrack;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sonymobile/android/media/internal/VideoTrack;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sonymobile/android/media/internal/VideoTrack;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z

    return p0
.end method

.method static synthetic access$602(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z

    return p0
.end method

.method static synthetic access$702(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonymobile/android/media/internal/VideoTrack;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z

    return p0
.end method

.method static synthetic access$802(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z

    return p1
.end method

.method static synthetic access$908(Lcom/sonymobile/android/media/internal/VideoTrack;)I
    .locals 2

    .line 40
    iget v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameDropCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameDropCounter:I

    return v0
.end method


# virtual methods
.method protected doPause()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected doPrepare()V
    .locals 8

    .line 156
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 158
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    iget v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    .line 159
    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "bitrate"

    .line 160
    iget v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingBitRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    .line 161
    iget v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    const/4 v3, 0x1

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 163
    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mOperatingRate:I

    if-lez v2, :cond_0

    const-string v2, "operating-rate"

    .line 164
    iget v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mOperatingRate:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "ts-schema"

    const-string v4, "android.generic.1+0"

    .line 166
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingProfile:I

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    if-nez v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    const-string v6, "video/avc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    if-lt v2, v5, :cond_1

    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    if-lt v2, v4, :cond_1

    const-string v2, "profile"

    const/16 v6, 0x8

    .line 172
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v2, "profile"

    .line 175
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_0
    const-string v2, "level"

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string v2, "profile"

    .line 182
    iget v6, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingProfile:I

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "level"

    .line 183
    iget v6, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingLevel:I

    if-nez v6, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingLevel:I

    :goto_1
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    const-string v2, "color-format"

    const v6, 0x7f000789

    .line 186
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 189
    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorStandard:I

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    if-ltz v2, :cond_5

    const-string v2, "color-standard"

    .line 190
    iget v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorStandard:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "color-transfer"

    .line 191
    iget v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "color-range"

    .line 192
    iget v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_4

    .line 194
    :cond_5
    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    if-lt v2, v5, :cond_6

    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    if-lt v2, v4, :cond_6

    const-string v2, "color-standard"

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    const-string v2, "color-standard"

    .line 198
    invoke-virtual {v1, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_3
    const-string v2, "color-transfer"

    const/4 v4, 0x3

    .line 201
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "color-range"

    .line 203
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 206
    :goto_4
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->checkFormat(Landroid/media/MediaCodecList;Landroid/media/MediaFormat;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 209
    invoke-virtual {v0, v1}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

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

    new-instance v2, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;-><init>(Lcom/sonymobile/android/media/internal/VideoTrack;Lcom/sonymobile/android/media/internal/VideoTrack$1;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 223
    :try_start_1
    iget v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBitRateMode:I

    if-ltz v0, :cond_7

    const-string v0, "bitrate-mode"

    .line 224
    iget v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBitRateMode:I

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
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

    goto :goto_5

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 239
    :goto_5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    goto :goto_6

    :catch_0
    const-string v0, "VideoTrack"

    const-string v1, "Failed to configure MediaCodec"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v3, v7, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "VideoTrack"

    const-string v2, "Unable to create encoder"

    .line 215
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v3, v7, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_9
    const-string v0, "VideoTrack"

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video format is not supported "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v3, v7, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    :goto_6
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
    .locals 3

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

    const-string v0, "VideoTrack"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " occurred. Maybe MediaCodec is released."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

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

    .line 103
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    return-object p0
.end method

.method setBitRateMode(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mBitRateMode:I

    return-void
.end method

.method setColorAspects(III)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorStandard:I

    .line 137
    iput p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorTransfer:I

    .line 138
    iput p3, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mColorRange:I

    return-void
.end method

.method setEncodingProfileLevel(II)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingProfile:I

    .line 128
    iput p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncodingLevel:I

    return-void
.end method

.method setFrameRate(I)V
    .locals 2

    .line 121
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    .line 122
    iget p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    if-eqz p1, :cond_0

    const p1, 0xf4240

    iget v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameRate:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J

    return-void
.end method

.method setInputSurface(Landroid/view/Surface;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mSourceSurface:Landroid/view/Surface;

    .line 108
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 109
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
    .locals 1

    if-ltz p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->videoMimeTypes:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->videoMimeTypes:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method setVideoSize(II)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mWidth:I

    .line 116
    iput p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mHeight:I

    return-void
.end method
