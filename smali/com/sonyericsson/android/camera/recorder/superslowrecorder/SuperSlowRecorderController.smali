.class public Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.source "SuperSlowRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;
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
.method static bridge synthetic -$$Nest$fgetmMutableAudioSource(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMuteDurationInMillis(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMuteDurationInMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSuperSlowRecordingFinishedListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentDurationInMillis(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSilentDurationInMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMutableAudioSource(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBypassCameraSuperSlow(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startBypassCameraSuperSlow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;IZII)V
    .locals 17
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
            "IZII)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p9

    move/from16 v13, p10

    .line 129
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    const/16 v0, 0x78

    invoke-direct {v4, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;-><init>(I)V

    sget-wide v6, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->MIN_VIDEO_DURATION_MILLIS:J

    const/4 v12, 0x1

    const/16 v16, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v13, p8

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V

    .line 181
    const-string v0, "SSM_RECORDER_PREPARE"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 142
    const-string v0, "SuperSlowRecorderController() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    move/from16 v0, p9

    .line 144
    iput v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    move/from16 v1, p10

    .line 145
    iput v1, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    move-object/from16 v2, p5

    .line 146
    iput-object v2, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    mul-int/lit16 v2, v1, 0x3e8

    .line 149
    div-int/2addr v2, v0

    iput v2, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMuteDurationInMillis:I

    mul-int/lit16 v0, v1, 0x3e8

    .line 151
    div-int/lit8 v0, v0, 0x1e

    iput v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSilentDurationInMillis:I

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v15, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->setInputDataSourceFactory(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;)V

    .line 158
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 159
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 161
    const-string v0, "SuperSlowRecorderController() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$001(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Landroid/os/Handler;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method private computeSuperSlowRemainTime()J
    .locals 6

    .line 319
    const-string v0, "computeSuperSlowRemainTime()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 321
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "  super-slow-trigger-time:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 323
    const-string p0, "  super-slow-process-time:180"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-wide v2

    .line 329
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "  elapsed-time-since-trigger:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-wide/16 v0, 0xb4

    sub-long/2addr v0, v4

    .line 332
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

    const-string/jumbo v0, "startBypassCameraSuperSlow() X failed : "

    const-string/jumbo v1, "startBypassCameraSuperSlow() X failed to verify state:"

    .line 337
    const-string/jumbo v2, "startBypassCameraSuperSlow() E"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 339
    :try_start_0
    new-array v4, v3, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v5, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 341
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 340
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 342
    monitor-exit v2

    return v6

    .line 344
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->startMute()V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    const-wide/16 v4, 0x0

    .line 352
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStartSuperSlowRecording()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x2710

    invoke-virtual {v1, v7, v8, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actual-elapsed-time-since-trigger:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 379
    iput-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 381
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 384
    const-string/jumbo p0, "startBypassCameraSuperSlow() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v3

    .line 368
    :cond_2
    :try_start_3
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Callback of slow motion frame is not sent over 5s from Bypasscamera"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 372
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actual-elapsed-time-since-trigger:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 379
    iput-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 381
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v6

    .line 376
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actual-elapsed-time-since-trigger:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 379
    iput-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 381
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 382
    throw v0

    :catch_1
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startBypassCameraSuperSlow() X failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actual-elapsed-time-since-trigger:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 360
    iput-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 362
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v6

    :catchall_1
    move-exception p0

    .line 344
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 76
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private waitForPrepareCompleted()Z
    .locals 3

    .line 205
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 206
    const-string p0, "PrepareTask is not submitted."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 210
    :cond_0
    :try_start_0
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

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception is thrown in PrepareTask.  cause:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 217
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 213
    :catch_1
    const-string p0, "PrepareTask is interrupted."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public getRecordingTimeMillis()J
    .locals 4

    .line 447
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCurrentPresentationTimeMillis()J

    move-result-wide v0

    .line 456
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->computeSuperSlowRemainTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 458
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getRecordingTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 166
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 167
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)Z

    move-result p0

    return p0
.end method

.method protected prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 6

    const-string p1, "prepareBypassCamera() X failed : "

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepareBypassCamera() E frame-rate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame-num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const/4 v1, 0x0

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v2

    .line 397
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;

    new-instance v5, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    invoke-direct {v5, v1, v1, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;-><init>(III)V

    invoke-direct {v4, v5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V

    .line 396
    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareSuperSlowRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V

    .line 399
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 409
    const-string p0, "prepareBypassCamera() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v1

    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 407
    throw p1
.end method

.method protected prepareCallBack()Z
    .locals 3

    .line 232
    const-string v0, "prepareCallBack() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 233
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareCallBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const-string p0, "prepareCallBack() X failed."

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 238
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

    .line 244
    const-string p0, "prepareCallBack() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 2

    .line 176
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

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->waitForPrepareCompleted()Z

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 227
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->releaseInternal()V

    return-void
.end method

.method protected startInternal()Z
    .locals 3

    .line 250
    const-string/jumbo v0, "startInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->waitForPrepareCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startRecorder()Z

    move-result v0

    const-string/jumbo v2, "startInternal() X failed"

    if-nez v0, :cond_1

    .line 262
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startBypassCamera()Z

    move-result p0

    if-nez p0, :cond_2

    .line 267
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 271
    :cond_2
    const-string/jumbo p0, "startInternal() X"

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

    .line 282
    const-string/jumbo v0, "startSuperSlow() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 285
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask-IA;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    const-string/jumbo p0, "startSuperSlow() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v3

    .line 286
    :cond_0
    :try_start_1
    const-string/jumbo p0, "start() X failed : illegal state"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 287
    new-instance p0, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    const-string v1, "Fail to verify state."

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 290
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
