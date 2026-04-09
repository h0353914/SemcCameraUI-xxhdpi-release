.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.source "DefaultRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StopVideoRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StartVideoRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$PrepareVideoRecordingCallbackImpl;
    }
.end annotation


# static fields
.field private static final STOP_PROCESS_INTERVAL_MILLISECONDS:J = 0x64L

.field private static final TRACE:Z = true


# instance fields
.field private final mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

.field private final mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

.field private final mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;ILandroid/os/Handler;ZZZZZ)V
    .locals 15
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
            "Lcom/sonyericsson/android/camera/recorder/RecorderInterface;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "J",
            "Landroid/os/Handler;",
            "I",
            "Landroid/os/Handler;",
            "ZZZZZ)V"
        }
    .end annotation

    move-object v14, p0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    .line 99
    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JILandroid/os/Handler;ZZZZ)V

    const-string v0, "DefaultRecorderController() E"

    .line 112
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    move-object/from16 v0, p3

    .line 114
    iput-object v0, v14, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    .line 116
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v14, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v14, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 118
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v14, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    if-eqz p15, :cond_0

    .line 125
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->disableAdjustRecordingTimeByRecorderNotification()V

    :cond_0
    const-string v0, "DefaultRecorderController() X"

    .line 128
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private convertDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;
    .locals 2

    .line 347
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v0, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    iget v1, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    iget p1, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;-><init>(III)V

    return-object p0
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/Accessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object p0
.end method

.method protected prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 3

    const-string v0, "prepareBypassCamera() E"

    .line 281
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 285
    :try_start_0
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;

    .line 286
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->dataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->convertDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareVideoRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V

    .line 288
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    const-string p0, "prepareBypassCamera() X"

    .line 298
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareBypassCamera() X failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 295
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return p1

    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 296
    throw p1
.end method

.method protected prepareCallBack()Z
    .locals 4

    const-string v0, "prepareCallBack() E"

    .line 136
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "prepareCallBack() X failed."

    .line 138
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$PrepareVideoRecordingCallbackImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$PrepareVideoRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StartVideoRecordingCallbackImpl;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StartVideoRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V

    new-instance v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StopVideoRecordingCallbackImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StopVideoRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setVideoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;)V

    const-string p0, "prepareCallBack() X"

    .line 147
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 2

    const-string v0, "prepareInternal() E"

    .line 153
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareCallBack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "prepareInternal() X failed"

    .line 156
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "prepareInternal() X failed"

    .line 161
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "prepareInternal() X failed"

    .line 166
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p0, "prepareInternal() X"

    .line 170
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected startBypassCamera()Z
    .locals 3

    const-string v0, "startBypassCamera() E"

    .line 303
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStartVideoRecording()V

    .line 308
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    const-string p0, "startBypassCamera() X"

    .line 318
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBypassCamera() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 315
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    return v0

    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 316
    throw v0
.end method

.method protected startInternal()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "startInternal() E"

    .line 176
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->startBypassCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "startInternal() X failed"

    .line 179
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->startRecorder()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "startInternal() X failed"

    .line 184
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string p0, "startInternal() X"

    .line 188
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected startRecorder()Z
    .locals 2

    .line 199
    :try_start_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->startInternal()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->notifyError()V

    const/4 v0, 0x0

    :goto_0
    return v0
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

    const-string v0, "stopBypassCamera() E"

    .line 331
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStopVideoRecording()V

    const/4 p0, 0x1

    .line 336
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "stopBypassCamera() X"

    .line 342
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 339
    :try_start_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "stopBypassCamera() X"

    .line 342
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-object p0

    :goto_0
    const-string v0, "stopBypassCamera() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 343
    throw p0
.end method

.method protected stopInternal()Z
    .locals 6

    const-string v0, "stopInternal() E"

    .line 209
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mIsCameraErrorDetected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 212
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stopInternal()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "stopInternal() X failed"

    .line 213
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v2

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->waitUntilFirstVideoFrameWritten()V

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getReferenceClock()Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 225
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->isAsyncStopSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAsync()V

    goto :goto_0

    .line 228
    :cond_1
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-wide/16 v3, 0x64

    .line 237
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 239
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sleep interrupted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 243
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->stopBypassCamera()Landroid/util/Pair;

    move-result-object v3

    .line 244
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    .line 263
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    return v2

    .line 247
    :cond_2
    :try_start_3
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 250
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->isAsyncStopSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 251
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->waitUntilStopCompleted()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    :cond_3
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    if-eqz v3, :cond_4

    .line 268
    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 269
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "stopBypassCameraLatch.await() interrupted"

    .line 271
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_4
    :goto_2
    const-string p0, "stopInternal() X"

    .line 276
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 260
    :try_start_5
    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopInternal() X failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    return v2

    :goto_3
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 264
    throw p0
.end method
