.class public Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.source "SuperSlowRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;
    }
.end annotation


# static fields
.field private static final MEDIA_FORMAT_OPERATING_RATE:I = 0x78

.field private static MIN_VIDEO_DURATION_MILLIS:J = 0xbb8L

.field private static final START_RECORDING_TIME_OUT_MILLIS:J = 0x2710L

.field private static final SUPER_SLOW_PROCESS_TIME_MILLIS:J = 0xb4L

.field private static final THREAD_NAME:Ljava/lang/String; = "SSM_RECORDER_PREPARE"

.field private static final TRACE:Z = true


# instance fields
.field private mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

.field private final mMuteDurationInMillis:I

.field private final mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

.field private final mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

.field private mPrepareTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mSilentDurationInMillis:I

.field private final mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

.field private final mSuperSlowFrameNum:I

.field private final mSuperSlowFrameRate:I

.field private volatile mSuperSlowTriggerTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;ILandroid/os/Handler;ZII)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;",
            "Landroid/os/Handler;",
            "I",
            "Landroid/os/Handler;",
            "ZII)V"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 133
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    const/16 v0, 0x78

    invoke-direct {v4, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;-><init>(I)V

    sget-wide v6, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->MIN_VIDEO_DURATION_MILLIS:J

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v16, 0x1

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v14, p9

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;ILandroid/os/Handler;ZZZZZ)V

    const-string v0, "SSM_RECORDER_PREPARE"

    .line 186
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v0, "SuperSlowRecorderController() E"

    .line 147
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    move/from16 v0, p10

    .line 149
    iput v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    move/from16 v0, p11

    .line 150
    iput v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    move-object/from16 v0, p5

    .line 151
    iput-object v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 154
    iget v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    const/16 v2, 0x3e8

    mul-int/2addr v0, v2

    iget v3, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    div-int/2addr v0, v3

    iput v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMuteDurationInMillis:I

    .line 156
    iget v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x1e

    iput v2, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSilentDurationInMillis:I

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$1;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->setInputDataSourceFactory(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;)V

    .line 163
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 164
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    const-string v0, "SuperSlowRecorderController() X"

    .line 166
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    return-object p1
.end method

.method static synthetic access$101(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMuteDurationInMillis:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSilentDurationInMillis:I

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startBypassCameraSuperSlow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Landroid/os/Handler;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private computeSuperSlowRemainTime()J
    .locals 6

    const-string v0, "computeSuperSlowRemainTime()"

    .line 324
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 326
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  super-slow-trigger-time:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-string p0, "  super-slow-process-time:180"

    .line 328
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-wide v2

    .line 334
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 336
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  elapsed-time-since-trigger:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-wide/16 v0, 0xb4

    sub-long/2addr v0, v4

    .line 337
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private startBypassCameraSuperSlow()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "startBypassCameraSuperSlow() E"

    .line 342
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 344
    :try_start_0
    new-array v2, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBypassCameraSuperSlow() X failed to verify state:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 346
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 345
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 347
    monitor-exit v0

    return v4

    .line 349
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->startMute()V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    const-wide/16 v2, 0x0

    .line 357
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStartSuperSlowRecording()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v5, 0x2710

    .line 372
    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Callback of slow motion frame is not sent over 5s from Bypasscamera"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 384
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 386
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    const-string p0, "startBypassCameraSuperSlow() X"

    .line 389
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 377
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBypassCameraSuperSlow() X failed : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 384
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 386
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v4

    .line 381
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 384
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 386
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 387
    throw v0

    :catch_1
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBypassCameraSuperSlow() X failed : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 365
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 367
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v4

    :catchall_1
    move-exception p0

    .line 349
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private waitForPrepareCompleted()Z
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PrepareTask is not submitted."

    .line 211
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 215
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 222
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is thrown in PrepareTask.  cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 222
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    :catch_1
    const-string p0, "PrepareTask is interrupted."

    .line 218
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public getRecordingTimeMillis()J
    .locals 4

    const/4 v0, 0x2

    .line 452
    new-array v0, v0, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCurrentPresentationTimeMillis()J

    move-result-wide v0

    .line 461
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->computeSuperSlowRemainTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 463
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getRecordingTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 171
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 172
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    return p0
.end method

.method protected prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 5

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareBypassCamera() E frame-rate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frame-num"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    const/4 v0, 0x0

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    .line 402
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;

    new-instance v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    invoke-direct {v4, v0, v0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;-><init>(III)V

    invoke-direct {v3, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V

    .line 401
    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareSuperSlowRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V

    .line 404
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    const-string p0, "prepareBypassCamera() X"

    .line 414
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareBypassCamera() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v0

    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 412
    throw p1
.end method

.method protected prepareCallBack()Z
    .locals 3

    const-string v0, "prepareCallBack() E"

    .line 237
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 238
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareCallBack()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "prepareCallBack() X failed."

    .line 239
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setSuperSlowCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;)V

    const-string p0, "prepareCallBack() X"

    .line 249
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    const/4 p0, 0x1

    return p0
.end method

.method protected releaseInternal()V
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->waitForPrepareCompleted()Z

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 232
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->releaseInternal()V

    return-void
.end method

.method protected startInternal()Z
    .locals 2

    const-string v0, "startInternal() E"

    .line 255
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->waitForPrepareCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startRecorder()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "startInternal() X failed"

    .line 267
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startBypassCamera()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "startInternal() X failed"

    .line 272
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p0, "startInternal() X"

    .line 276
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startSuperSlow()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "startSuperSlow() E"

    .line 287
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 290
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "start() X failed : illegal state"

    .line 291
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 292
    new-instance p0, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    const-string v1, "Fail to verify state."

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 294
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$1;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "startSuperSlow() X"

    .line 296
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p0

    .line 295
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
