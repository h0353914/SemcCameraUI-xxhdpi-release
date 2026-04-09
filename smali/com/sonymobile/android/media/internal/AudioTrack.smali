.class Lcom/sonymobile/android/media/internal/AudioTrack;
.super Lcom/sonymobile/android/media/internal/Track;
.source "AudioTrack.java"

# interfaces
.implements Lcom/sonymobile/android/media/internal/ClockInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;,
        Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;,
        Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
    }
.end annotation


# static fields
.field private static final ENCODING_PCM_SETTING:I = 0x2

.field private static final HW_AAC_ENCODER:Ljava/lang/String; = "OMX.qcom.audio.encoder.aac"

.field private static final HW_AAC_ENCODER_AVAILABLE:Z = true

.field private static final HW_ENCODER_BITRATE:I = 0x26160

.field private static final INIT_PAUSE_ARRAY_SIZE:I = 0x64

.field private static final MAX_AUDIO_BITRATE:I = 0x26160

.field private static final MIN_STOP_AUDIO_DURATION_US:I = 0x1e8480

.field protected static final TAG:Ljava/lang/String; = "AudioTrack"


# instance fields
.field private final audioMimeTypes:[Ljava/lang/String;

.field private mAudioBitRate:I

.field private mAudioDurationUs:J

.field private mAudioMime:Ljava/lang/String;

.field private mAudioOffset:J

.field private mAudioRecord:Z

.field private final mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

.field private final mAudioRecordThread:Landroid/os/HandlerThread;

.field private mAudioRecorder:Landroid/media/AudioRecord;

.field private mAudioSamplingRate:I

.field private mAudioSource:I

.field private mBytesPerSample:I

.field private final mCallback:Landroid/os/Handler;

.field private mClockPauseTimeUs:J

.field private mClockResumeTimeUs:J

.field private mClockStartTimeUs:J

.field private mClockStopTimeUs:J

.field private mClockTotalPauseDurationUs:J

.field private final mCodecHandler:Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;

.field private mEosFlagged:Z

.field private mFirstCodecFrame:Z

.field private mInputBufferSize:I

.field private final mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

.field private mNumAudioChannels:I

.field private mPauseArrayIndex:I

.field private mPauseResumeIndices:[J

.field private mStartVolumeDelayUs:I

.field private mStopAudioRecording:Z


# direct methods
.method constructor <init>(ILandroid/os/Handler;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    .locals 11

    move-object v0, p0

    .line 104
    invoke-direct {v0}, Lcom/sonymobile/android/media/internal/Track;-><init>()V

    const/4 v1, 0x0

    .line 49
    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    .line 55
    iput v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSource:I

    const v2, 0xac44

    .line 56
    iput v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I

    const/4 v2, 0x2

    .line 57
    iput v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I

    const v3, 0x26160

    .line 58
    iput v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioBitRate:I

    .line 59
    iput v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mBytesPerSample:I

    .line 70
    iput-boolean v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z

    .line 71
    iput v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mStartVolumeDelayUs:I

    const-string v4, ""

    const-string v5, "audio/3gpp"

    const-string v6, "audio/amr-wb"

    const-string v7, "audio/mp4a-latm"

    const-string v8, "audio/mp4a-latm"

    const-string v9, "audio/mp4a-latm"

    const-string v10, "audio/vorbis"

    .line 74
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->audioMimeTypes:[Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 83
    iput-wide v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J

    const-wide/16 v3, -0x1

    .line 84
    iput-wide v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    .line 85
    iput-wide v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockPauseTimeUs:J

    .line 86
    iput-wide v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockResumeTimeUs:J

    .line 88
    iput-wide v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStopTimeUs:J

    const/4 v3, 0x1

    .line 95
    iput-boolean v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstCodecFrame:Z

    .line 97
    iput-boolean v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecord:Z

    .line 99
    iput-boolean v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mStopAudioRecording:Z

    move v1, p1

    .line 105
    iput v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSource:I

    .line 107
    new-instance v1, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;-><init>(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;

    .line 108
    new-instance v1, Lcom/sonymobile/android/media/internal/Track$EventHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sonymobile/android/media/internal/Track$EventHandler;-><init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    .line 109
    new-instance v1, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    invoke-virtual/range {p5 .. p5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;-><init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    .line 111
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "AudioRecord"

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordThread:Landroid/os/HandlerThread;

    .line 113
    iget-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v1, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    iget-object v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;-><init>(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    .line 116
    new-instance v1, Lcom/sonymobile/android/media/internal/HandlerHelper;

    invoke-direct {v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;-><init>()V

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    move-object v1, p2

    .line 117
    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    .line 119
    iget-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->audioMimeTypes:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioMime:Ljava/lang/String;

    .line 121
    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 124
    iput v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mBytesPerSample:I

    move/from16 v1, p6

    .line 129
    iput-boolean v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecord:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonymobile/android/media/internal/AudioTrack;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/media/internal/AudioTrack;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mStartVolumeDelayUs:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/media/internal/AudioTrack;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstCodecFrame:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstCodecFrame:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/media/internal/AudioTrack;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioOffset:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I

    return p0
.end method

.method static synthetic access$302(Lcom/sonymobile/android/media/internal/AudioTrack;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/android/media/internal/AudioTrack;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I

    return p0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/media/internal/AudioTrack;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mBytesPerSample:I

    return p0
.end method

.method static synthetic access$700(Lcom/sonymobile/android/media/internal/AudioTrack;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I

    return p0
.end method

.method static synthetic access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z

    return p0
.end method

.method static synthetic access$802(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method adjustAudioTimeStamp(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 299
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioOffset:J

    return-void
.end method

.method adjustStartVolume(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    .line 303
    iput p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mStartVolumeDelayUs:I

    return-void
.end method

.method protected doPause()V
    .locals 1

    .line 142
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 143
    iget-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecord:Z

    if-nez v0, :cond_0

    .line 144
    iget-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    :cond_0
    return-void
.end method

.method protected doPrepare()V
    .locals 13

    .line 153
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 155
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioMime:Ljava/lang/String;

    iget v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I

    iget v4, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I

    .line 156
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "bitrate"

    .line 157
    iget v4, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioBitRate:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 158
    iget v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mOperatingRate:I

    if-lez v3, :cond_0

    const-string v3, "operating-rate"

    .line 159
    iget v4, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mOperatingRate:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioMime:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->checkFormat(Landroid/media/MediaCodecList;Landroid/media/MediaFormat;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 165
    iget v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I

    if-ne v3, v6, :cond_1

    const/16 v3, 0x10

    :goto_0
    move v10, v3

    goto :goto_1

    .line 167
    :cond_1
    iget v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I

    if-ne v3, v5, :cond_2

    const/16 v3, 0xc

    goto :goto_0

    :cond_2
    move v10, v6

    .line 172
    :goto_1
    :try_start_0
    iget v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I

    iget v7, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I

    invoke-static {v3, v7, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    mul-int/2addr v3, v5

    iput v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I

    .line 174
    new-instance v3, Landroid/media/AudioRecord;

    iget v8, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSource:I

    iget v9, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I

    const/4 v11, 0x2

    iget v12, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 184
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioMime:Ljava/lang/String;

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_1
    const-string v3, "OMX.qcom.audio.encoder.aac"

    .line 186
    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v6

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AudioTrack"

    const-string v2, "Unable to create encoder"

    .line 189
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    const v0, 0x26160

    .line 201
    iput v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioBitRate:I

    const-string v0, "bitrate"

    .line 202
    iget v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioBitRate:I

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    .line 204
    :cond_4
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :try_start_2
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 215
    :goto_3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 217
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;-><init>(Lcom/sonymobile/android/media/internal/AudioTrack;Lcom/sonymobile/android/media/internal/AudioTrack$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 218
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, v2, v3, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "AudioTrack"

    const-string v2, "Unable to create encoder"

    .line 209
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_3
    move-exception v0

    const-string v2, "AudioTrack"

    const-string v3, "Unable to create AudioRecord"

    .line 178
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v6, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_5
    const-string v0, "AudioTrack"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format is not supported "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_4
    return-void
.end method

.method public doRelease()V
    .locals 3

    .line 282
    iget-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecord:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    const/16 v2, 0x6b

    .line 286
    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    const/16 v2, 0x6c

    .line 288
    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 291
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    .line 295
    :cond_1
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method protected doReset()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v0, v1, :cond_0

    .line 316
    iget-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecord:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    const/16 v1, 0x6b

    .line 318
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 317
    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected doResume(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 308
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 309
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected doStart()V
    .locals 3

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mStopAudioRecording:Z

    .line 230
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecord:Z

    if-eqz v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    const/16 v1, 0x6d

    .line 232
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 231
    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method protected doStop()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecord:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    const/16 v1, 0x6b

    .line 244
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 243
    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method protected doWriteOutputBuffer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v0}, Lcom/sonymobile/android/media/internal/ClockInterface;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 325
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->isMuxerStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;

    .line 339
    iget-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    iget v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 352
    :cond_2
    iget-boolean v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mStopAudioRecording:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v4, 0x1e8480

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerTrackIndex:I

    iget-object v4, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v1, v4}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 361
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    if-nez v1, :cond_5

    .line 362
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    iget v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 364
    :cond_5
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 371
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 373
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerTrackIndex:I

    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->endTrack(I)V

    :cond_6
    return-void
.end method

.method public getCurrentTimeUs()J
    .locals 4

    .line 382
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 383
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    return-wide v0

    .line 385
    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockPauseTimeUs:J

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockResumeTimeUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->getDurationAtPauseUs()J

    move-result-wide v0

    return-wide v0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->getSystemTimeUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockTotalPauseDurationUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationAtPauseUs()J
    .locals 4

    .line 479
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockPauseTimeUs:J

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockTotalPauseDurationUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationAtStopUs()J
    .locals 4

    .line 485
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStopTimeUs:J

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockTotalPauseDurationUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getRecordedDurationUs()J
    .locals 2

    .line 422
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J

    return-wide v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .line 407
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    return-wide v0
.end method

.method public getStopTimeUs()J
    .locals 2

    .line 500
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStopTimeUs:J

    return-wide v0
.end method

.method public getSystemTimeUs()J
    .locals 4

    .line 412
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPausedDurationUs()J
    .locals 2

    .line 490
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockTotalPauseDurationUs:J

    return-wide v0
.end method

.method public isPausedAt(J)Z
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    iget p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p0

    const/4 p1, 0x1

    if-ltz p0, :cond_1

    .line 465
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    .line 471
    :cond_1
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    :goto_0
    return p1
.end method

.method public isStarted()Z
    .locals 4

    .line 417
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pauseClock()V
    .locals 6

    .line 427
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockPauseTimeUs:J

    .line 428
    iget v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    iget v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockPauseTimeUs:J

    iget-wide v4, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 433
    iget v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    .line 434
    iget v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    :cond_1
    return-void
.end method

.method public resetClock()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 394
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    return-void
.end method

.method public resumeClock()V
    .locals 6

    .line 443
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockResumeTimeUs:J

    .line 444
    iget v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockTotalPauseDurationUs:J

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockResumeTimeUs:J

    iget-wide v4, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockPauseTimeUs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockTotalPauseDurationUs:J

    .line 449
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    iget v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockResumeTimeUs:J

    iget-wide v4, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 450
    iget v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    .line 451
    iget v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    :cond_1
    return-void
.end method

.method setAudioBitRate(I)V
    .locals 1

    const v0, 0x26160

    if-ge p1, v0, :cond_0

    .line 253
    iput p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioBitRate:I

    :cond_0
    return-void
.end method

.method setAudioChannels(I)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I

    return-void
.end method

.method setAudioEncoder(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->audioMimeTypes:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->audioMimeTypes:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioMime:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioMime:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method setAudioSamplingRate(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I

    return-void
.end method

.method public setMediaMuxerStarted()V
    .locals 1

    .line 505
    invoke-super {p0}, Lcom/sonymobile/android/media/internal/Track;->setMediaMuxerStarted()V

    .line 506
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setStartTime()V
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->getSystemTimeUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStartTimeUs:J

    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseArrayIndex:I

    const/16 v0, 0x64

    .line 402
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseResumeIndices:[J

    return-void
.end method

.method protected stopAudioRecording()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mStopAudioRecording:Z

    return-void
.end method

.method public stopClock()V
    .locals 4

    .line 495
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mClockStopTimeUs:J

    return-void
.end method
