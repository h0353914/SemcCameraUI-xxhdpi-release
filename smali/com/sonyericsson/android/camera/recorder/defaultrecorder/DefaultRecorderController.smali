.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.source "DefaultRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$PrepareVideoRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StartVideoRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$StopVideoRecordingCallbackImpl;
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
.method static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V
    .locals 14
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
            "IZZZZZ)V"
        }
    .end annotation

    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 96
    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JIZZZZ)V

    .line 108
    const-string v0, "DefaultRecorderController() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    move-object/from16 v0, p3

    .line 110
    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    .line 112
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    .line 114
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;-><init>()V

    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    if-eqz p14, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->disableAdjustRecordingTimeByRecorderNotification()V

    .line 124
    :cond_0
    const-string v0, "DefaultRecorderController() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private convertDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;
    .locals 2

    .line 345
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v0, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    iget v1, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    iget p1, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;-><init>(III)V

    return-object p0
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 41
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/Accessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object p0
.end method

.method protected prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 4

    const-string v0, "prepareBypassCamera() X failed : "

    .line 277
    const-string v1, "prepareBypassCamera() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 281
    :try_start_0
    new-instance v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;

    .line 282
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->dataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->convertDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V

    .line 285
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareVideoRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V

    .line 286
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 296
    const-string p0, "prepareBypassCamera() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    const/4 p0, 0x0

    return p0

    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 294
    throw p1
.end method

.method protected prepareCallBack()Z
    .locals 4

    .line 132
    const-string v0, "prepareCallBack() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    const-string p0, "prepareCallBack() X failed."

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 138
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

    .line 143
    const-string p0, "prepareCallBack() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 3

    .line 149
    const-string v0, "prepareInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareCallBack()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "prepareInternal() X failed"

    if-nez v0, :cond_0

    .line 152
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 156
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 161
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 162
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 166
    :cond_2
    const-string p0, "prepareInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected startBypassCamera()Z
    .locals 3

    const-string/jumbo v0, "startBypassCamera() X failed : "

    .line 301
    const-string/jumbo v1, "startBypassCamera() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStartVideoRecording()V

    .line 306
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 316
    const-string/jumbo p0, "startBypassCamera() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 309
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    const/4 p0, 0x0

    return p0

    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V

    .line 314
    throw v0
.end method

.method protected startInternal()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 172
    const-string/jumbo v0, "startInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->startBypassCamera()Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "startInternal() X failed"

    if-nez v0, :cond_0

    .line 175
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->startRecorder()Z

    move-result p0

    if-nez p0, :cond_1

    .line 180
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 184
    :cond_1
    const-string/jumbo p0, "startInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected startRecorder()Z
    .locals 2

    .line 195
    :try_start_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->startInternal()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->notifyError()V

    const/4 p0, 0x0

    :goto_0
    return p0

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method protected stopBypassCamera()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation

    .line 329
    const-string/jumbo v0, "stopBypassCamera() X"

    const-string/jumbo v1, "stopBypassCamera() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStopVideoRecording()V

    const/4 p0, 0x1

    .line 334
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 337
    :try_start_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return-object p0

    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 341
    throw p0
.end method

.method protected stopInternal()Z
    .locals 7

    const-string/jumbo v0, "sleep interrupted : "

    const-string/jumbo v1, "stopInternal() X failed : "

    .line 205
    const-string/jumbo v2, "stopInternal() E"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 207
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mIsCameraErrorDetected:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 208
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stopInternal()Z

    move-result p0

    if-nez p0, :cond_4

    .line 209
    const-string/jumbo p0, "stopInternal() X failed"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v4

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v2

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->waitUntilFirstVideoAndAudioFrameWritten()V

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->getReferenceClock()Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 221
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->isAsyncStopSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAsync()V

    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-wide/16 v5, 0x64

    .line 233
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 235
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    .line 239
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->stopBypassCamera()Landroid/util/Pair;

    move-result-object v0

    .line 240
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    .line 259
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    return v4

    .line 243
    :cond_2
    :try_start_3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 246
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->isAsyncStopSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->waitUntilStopCompleted()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :cond_3
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    if-eqz v0, :cond_4

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 265
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController$CallbackLock;->release()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 267
    :catch_1
    const-string/jumbo p0, "stopBypassCameraLatch.await() interrupted"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 272
    :cond_4
    :goto_2
    const-string/jumbo p0, "stopInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;->trace(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 256
    :try_start_5
    new-array v0, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    return v4

    :goto_3
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 260
    throw p0
.end method
