.class public Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.source "SuperSlowShotRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;
    }
.end annotation


# static fields
.field private static final MEDIA_FORMAT_OPERATING_RATE:I = 0x78

.field private static MIN_VIDEO_DURATION_MILLIS:J = 0x0L

.field private static final START_RECORDING_TIME_OUT_MILLIS:J = 0x2710L

.field private static final THREAD_NAME:Ljava/lang/String; = "SSS_RECORDER_PREPARE"

.field private static final TRACE:Z = true


# instance fields
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

.field private final mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

.field private final mSuperSlowFrameNum:I

.field private final mSuperSlowFrameRate:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnSuperSlowRecordingFinishedListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;IZII)V
    .locals 16
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

    .line 123
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    const/16 v0, 0x78

    invoke-direct {v4, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;-><init>(I)V

    sget-wide v6, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->MIN_VIDEO_DURATION_MILLIS:J

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v14}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V

    .line 181
    const-string v0, "SSS_RECORDER_PREPARE"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 136
    const-string v0, "SuperSlowShotRecorderController() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    move/from16 v0, p9

    .line 138
    iput v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mSuperSlowFrameRate:I

    move/from16 v0, p10

    .line 139
    iput v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mSuperSlowFrameNum:I

    move-object/from16 v0, p5

    .line 140
    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->setInputDataSourceFactory(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;)V

    .line 146
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 147
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 149
    const-string v0, "SuperSlowShotRecorderController() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$101(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->startBypassCamera()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->notifyError()V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 88
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private waitForPrepareCompleted()Z
    .locals 3

    .line 222
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 223
    const-string p0, "PrepareTask is not submitted."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 227
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

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception is thrown in PrepareTask.  cause:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
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

    .line 234
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 230
    :catch_1
    const-string p0, "PrepareTask is interrupted."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public getRecordingTimeMillis()J
    .locals 2

    .line 389
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mSuperSlowFrameNum:I

    mul-int/lit16 p0, p0, 0x3e8

    div-int/lit8 p0, p0, 0x1e

    int-to-long v0, p0

    return-wide v0

    .line 392
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getRecordingTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 6

    const-string p1, "prepareBypassCamera() X failed : "

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepareBypassCamera() E frame-rate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mSuperSlowFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame-num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mSuperSlowFrameNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const/4 v1, 0x0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v2

    .line 256
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;

    new-instance v5, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    invoke-direct {v5, v1, v1, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;-><init>(III)V

    invoke-direct {v4, v5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V

    .line 255
    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareSuperSlowRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V

    .line 258
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 268
    const-string p0, "prepareBypassCamera() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v1

    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 266
    throw p1
.end method

.method protected prepareCallBack()Z
    .locals 3

    .line 154
    const-string v0, "prepareCallBack() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 155
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareCallBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string p0, "prepareCallBack() X failed."

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareSuperSlowRecordingCallbackImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareSuperSlowRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setSuperSlowCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;)V

    .line 166
    const-string p0, "prepareCallBack() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    const/4 p0, 0x1

    return p0
.end method

.method protected releaseInternal()V
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->waitForPrepareCompleted()Z

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 244
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->releaseInternal()V

    return-void
.end method

.method protected startInternal()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 290
    const-string v0, "Callback of slow motion frame is not sent over 5s from Bypasscamera"

    const-string/jumbo v1, "startInternal() latch.await X"

    const-string/jumbo v2, "startInternal() latch.await E"

    .line 0
    const-string/jumbo v3, "startInternal() X failed : "

    .line 290
    const-string/jumbo v4, "startInternal() E"

    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->waitForPrepareCompleted()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStartSuperSlowRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    const-wide/16 v6, 0x2710

    .line 305
    :try_start_1
    const-string/jumbo v8, "startInternal() recorder.start E"

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->start()V

    .line 307
    const-string/jumbo v8, "startInternal() recorder.start X"

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v8, "startInternal() reference-clock.start E"

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getReferenceClock()Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->start()V

    .line 311
    const-string/jumbo v8, "startInternal() reference-clock.start X"

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :try_start_2
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 320
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 321
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 322
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_1

    return v5

    .line 323
    :cond_1
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_2
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 334
    :goto_0
    const-string/jumbo v0, "startInternal() post callback E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$1;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    const-string/jumbo p0, "startInternal() post callback X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 344
    const-string/jumbo p0, "startInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v8

    goto :goto_2

    :catch_1
    move-exception v8

    .line 313
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :try_start_4
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 320
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 321
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 322
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p0, :cond_3

    return v5

    .line 323
    :cond_3
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :cond_4
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    :goto_1
    return v5

    .line 319
    :goto_2
    :try_start_5
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 320
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 321
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 322
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez p0, :cond_5

    return v5

    .line 323
    :cond_5
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :cond_6
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    .line 332
    :goto_3
    throw v8

    :catch_4
    move-exception p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V

    return v5
.end method

.method protected stopBypassCamera()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    .line 370
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
