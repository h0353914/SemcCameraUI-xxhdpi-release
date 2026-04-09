.class public Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;
.super Ljava/lang/Object;
.source "VariableSourceMediaRecorder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;
    }
.end annotation


# static fields
.field private static final AUDIO_MIMETYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final ENABLE_MONITOR_FPS:Z = false

.field private static final I_FRAME_INTERVAL_SECONDS:I = 0x1

.field private static final PROGRESS_NOTIFICATION_INTERVAL_MILLIS:J = 0x3e8L

.field private static final STOP_RECORDING_TIME_OUT_MILLIS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "VariableSourceMediaRecorder"

.field private static final TRACE:Z = false

.field private static final VIDEO_MIMETYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mContext:Landroid/content/Context;

.field private mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

.field private final mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

.field private mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

.field private mLocation:Landroid/location/Location;

.field private mMaxDurationMillis:J

.field private mMaxFileSizeBytes:J

.field private mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field private mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mOperatingRate:I

.field private mOrientationHint:I

.field private mOutputPath:Ljava/lang/String;

.field private volatile mResult:Z

.field private mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

.field private mSurface:Landroid/view/Surface;

.field private mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

.field private mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mHandler:Landroid/os/Handler;

    .line 165
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOperatingRate:I

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mResult:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    return-object p0
.end method

.method private createAudioFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;
    .locals 1

    .line 472
    iget p0, p2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iget v0, p2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {p1, p0, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const-string p1, "bitrate"

    .line 476
    iget p2, p2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "aac-profile"

    const/4 p2, 0x2

    .line 478
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0
.end method

.method private createAudioInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "audio/mp4a-latm"

    .line 498
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createAudioFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "audio/mp4a-latm"

    .line 499
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 500
    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 502
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

    invoke-interface {p0, v1, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;->createAudioSource(Landroid/media/MediaCodec;Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    move-result-object p0

    .line 503
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object p0

    return-object p0
.end method

.method private createVideoFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;
    .locals 3

    .line 432
    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {p1, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "color-format"

    const v1, 0x7f000789

    .line 436
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    .line 438
    iget v1, p2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    .line 439
    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    const/4 v1, 0x1

    .line 441
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "operating-rate"

    .line 442
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOperatingRate:I

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 444
    iget p0, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v0, 0x8

    const/16 v2, 0xf00

    if-lt p0, v2, :cond_1

    iget p0, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x870

    if-lt p0, v2, :cond_1

    .line 445
    iget p0, p2, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_0

    const-string p0, "profile"

    .line 446
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 448
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "profile"

    .line 451
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 453
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 456
    :cond_1
    iget p0, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x280

    if-lt p0, v2, :cond_2

    iget p0, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 p2, 0x1e0

    if-lt p0, p2, :cond_2

    const-string p0, "profile"

    .line 457
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 459
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p0, "profile"

    .line 462
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 464
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_0
    return-object p1
.end method

.method private createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "video/avc"

    .line 486
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createVideoFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "video/avc"

    .line 487
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 488
    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 490
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

    invoke-interface {v2, v1, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;->createVideoSource(Landroid/media/MediaCodec;Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 493
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object p0

    return-object p0
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public isAsyncStopSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 1

    .line 428
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-eq v0, v1, :cond_0

    .line 220
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 223
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    .line 224
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->orientationHint()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOrientationHint:I

    .line 225
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    .line 226
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxDurationMillis:J

    .line 227
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxFileSizeBytes:J

    .line 228
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result p1

    .line 231
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 239
    :try_start_0
    new-array p1, p1, [Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 240
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v3

    aput-object v3, p1, v2

    .line 241
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createAudioInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 244
    :cond_2
    new-array p1, v1, [Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 245
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v0

    aput-object v0, p1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    return v1

    .line 249
    :goto_1
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    if-eqz p2, :cond_4

    .line 250
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p2

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    aget-object v4, p2, v3

    .line 251
    iget-object v5, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 252
    iget-object v4, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->release()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 254
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 256
    :cond_4
    new-array p0, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepare() failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2
.end method

.method public release()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-eq v0, v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->stop()V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->reset()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    .line 391
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 393
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 395
    iget-object v5, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 396
    iget-object v4, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->release()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .line 423
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInputDataSourceFactory(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 190
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method cannot accept null as InputDataSourceFactory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 204
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 205
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    .line 206
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setMaxDurationMillis(J)V
    .locals 0

    .line 638
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxDurationMillis:J

    return-void
.end method

.method public setMaxFileSizeBytes(J)V
    .locals 2

    const-wide v0, 0x3b9aca0000L

    .line 644
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxFileSizeBytes:J

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 656
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOrientationHint:I

    return-void
.end method

.method public setOutputFilePath(Ljava/lang/String;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    .line 282
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    .line 285
    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathAfterDcim(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-static {v1, v0, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "rw"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string p0, "openFileDescriptor fd is null."

    .line 295
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 296
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "openFileDescriptor fd is null."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :cond_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 300
    iput-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "openFileDescriptor failed."

    .line 291
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    move-object v0, v2

    .line 303
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)V

    const/4 v3, 0x1

    .line 306
    :try_start_1
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;-><init>([Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;Ljava/lang/String;Ljava/io/FileDescriptor;Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOrientationHint:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setOrientationHint(I)V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxDurationMillis:J

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setMaxDuration(J)V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxFileSizeBytes:J

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setMaxFileSize(J)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    .line 318
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v1, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    .line 317
    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setLocation(FF)V

    .line 321
    :cond_3
    iput-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 323
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

    .line 324
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;

    .line 326
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->RUNNING:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->start()V

    .line 331
    :try_start_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 308
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 309
    throw p0

    .line 278
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public stop()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-eq v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stop()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 347
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FPS_MONITOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 352
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, "Encoder doesn\'t finish correctly. Video file may be corrupt."

    .line 358
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 361
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 364
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mResult:Z

    if-nez p0, :cond_3

    .line 365
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "recording failed."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    const-string v0, "stop failed due to interruption."

    .line 354
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public stopAsync()V
    .locals 1

    .line 377
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "#stopAsync() only supported by SomeMediaRecorder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopAudioRecording()V
    .locals 0

    return-void
.end method

.method public stopOnCameraError()V
    .locals 1

    const-string v0, "stopOnCameraError() E"

    .line 405
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->trace(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->stop()V

    const-string p0, "stopOnCameraError() X"

    .line 407
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public waitUntilStopCompleted()V
    .locals 1

    .line 383
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "#stopAsync() only supported by SomeMediaRecorder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
