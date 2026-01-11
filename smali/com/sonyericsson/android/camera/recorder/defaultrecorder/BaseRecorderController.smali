.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;
    }
.end annotation


# static fields
.field private static MIN_INTELLIGENT_ACTIVE_VIDEO_DURATION_MILLIS:J = 0xbb8L

.field private static MIN_VIDEO_DURATION_MILLIS:J = 0xbb8L

.field private static final TIME_OF_START_SOUND_TO_COMPLETE_IN_MILLI:I = 0x12c

.field private static final TIME_OF_START_SOUND_TO_COMPLETE_IN_MILLI_LONG:I = 0x258

.field private static final TRACE:Z = true

.field private static final TRACE_FOR_PROGRESS:Z = false


# instance fields
.field private final mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsAdjustRecordingTimeByRecorderNotification:Z

.field protected mIsCameraErrorDetected:Z

.field private mIsMicrophoneEnabled:Z

.field private final mIsStartSoundRequired:Z

.field private mIsStopSoundAlreadyPlayed:Z

.field private final mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

.field private final mIsStopSoundRequired:Z

.field private mIsUserSoundSettingOn:Z

.field private mLastNotifyDurationMillis:J

.field private mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

.field private mMaxDurationMillis:J

.field private final mMinDurationMillis:J

.field private final mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field private final mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

.field private final mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

.field private final mRecorderAccessThread:Landroid/os/HandlerThread;

.field private final mRecorderControllerThread:Landroid/os/Handler;

.field private mRecordingSurface:Landroid/view/Surface;

.field private final mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

.field private final mShouldWaitStartSound:Z

.field private mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field protected final mStateLock:Ljava/lang/Object;

.field private mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

.field private final mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsMicrophoneEnabled(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsMicrophoneEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNotifyDurationMillis(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxDurationMillis(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTickCallback(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceClock(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldWaitStartSound(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mShouldWaitStartSound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageWriteNotifier(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitUntilWriting(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecordingSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIfWaitStartSoundLongTime(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->checkIfWaitStartSoundLongTime()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdisplayMaxDuration(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->displayMaxDuration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDuration(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyDuration(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyFinishResult(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyFinishResult(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayStopSound(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->playStopSound()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JIZZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderInterface;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "JIZZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    .line 927
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

    .line 976
    new-instance v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v3, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    .line 1014
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v4, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    .line 1034
    new-instance v5, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v5, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 1063
    new-instance v6, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$5;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$5;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v6, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 1173
    new-instance v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$6;

    invoke-direct {v7, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$6;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v7, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    .line 239
    const-string v8, "BaseRecorderController() E"

    invoke-static {v8}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    move-object v8, p1

    .line 241
    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    move-object v8, p2

    .line 242
    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    move-object/from16 v8, p5

    .line 243
    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 244
    iput-object v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    .line 245
    sget-object v8, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 246
    new-instance v8, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move/from16 v9, p8

    int-to-long v9, v9

    invoke-direct {v8, p4, v7, v9, v10}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;J)V

    iput-object v8, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    .line 250
    new-instance v2, Landroid/os/HandlerThread;

    const-string v7, "RecorderAccess"

    const/16 v8, 0xa

    invoke-direct {v2, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderAccessThread:Landroid/os/HandlerThread;

    .line 252
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 253
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderControllerThread:Landroid/os/Handler;

    move-wide/from16 v7, p6

    .line 255
    iput-wide v7, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    move/from16 v2, p9

    .line 257
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStartSoundRequired:Z

    move/from16 v2, p10

    .line 258
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mShouldWaitStartSound:Z

    move/from16 v2, p11

    .line 259
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundRequired:Z

    move/from16 v2, p12

    .line 260
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    const/4 v2, 0x0

    .line 261
    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    .line 263
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    .line 264
    invoke-interface {p3, v5, v6, v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setListener(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V

    const/4 v1, 0x1

    .line 270
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    .line 272
    const-string v0, "BaseRecorderController() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private checkIfWaitStartSoundLongTime()Z
    .locals 7

    .line 449
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    .line 450
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 452
    invoke-virtual {p0}, Landroid/media/AudioManager;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object p0

    .line 457
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceInfo;

    .line 458
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_1

    const/16 v6, 0x16

    if-eq v4, v6, :cond_1

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    :cond_1
    move v1, v5

    :cond_2
    const/16 v6, 0x8

    if-eq v4, v6, :cond_3

    const/4 v6, 0x7

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1b

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1e

    if-ne v4, v6, :cond_4

    :cond_3
    move v2, v5

    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    move v3, v5

    goto :goto_0

    .line 481
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "checkIfWaitStartSoundLongTime: hasMicrophone: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, ", hasBluetoothHeadset: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, ",hasWiredHeadset: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    move v0, v5

    :cond_7
    return v0
.end method

.method private displayMaxDuration()V
    .locals 8

    .line 1198
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    sub-long v6, v0, v4

    cmp-long v2, v6, v2

    if-ltz v2, :cond_0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$7;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/Accessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method protected static minVideoLengthMillis(Z)J
    .locals 2

    if-eqz p0, :cond_0

    .line 99
    sget-wide v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->MIN_INTELLIGENT_ACTIVE_VIDEO_DURATION_MILLIS:J

    goto :goto_0

    .line 100
    :cond_0
    sget-wide v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->MIN_VIDEO_DURATION_MILLIS:J

    :goto_0
    return-wide v0
.end method

.method private notifyDuration(J)V
    .locals 4

    .line 1149
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    .line 1151
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->isMeasuring()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 1154
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->reset(J)V

    .line 1157
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->resume()V

    .line 1159
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    if-eqz v0, :cond_1

    .line 1162
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;->notifyWriteStorage()V

    .line 1166
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->onRecordProgress(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1159
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyFinishResult(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 1

    .line 1093
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private playStopSound()V
    .locals 3

    const-string v0, "playStopSound() is-already-played:"

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playStopSound() E required:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStopSound()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 932
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStopSound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 936
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 937
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 940
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 944
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->STOP_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 940
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 948
    :cond_1
    :goto_1
    const-string p0, "playStopSound() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private shouldPlayStartSound()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStartSoundRequired:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldPlayStopSound()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundRequired:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 52
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeTo() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-void
.end method

.method protected disableAdjustRecordingTimeByRecorderNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    return-void
.end method

.method protected executeInBackground(Ljava/lang/Runnable;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderControllerThread:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getCallbackHandler()Landroid/os/Handler;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    return-object p0
.end method

.method public getRecordingTimeMillis()J
    .locals 2

    .line 319
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getReferenceClock()Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    return-object p0
.end method

.method public isPaused()Z
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 285
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isReady()Z
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 278
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRecording()Z
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 299
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 300
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isReleased()Z
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 313
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isStarting()Z
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 292
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isStopping()Z
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 306
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected notifyError()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 682
    const-string v1, "pause() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 685
    :try_start_0
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 690
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 691
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    const-string p0, "pause() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 686
    :cond_0
    :try_start_1
    const-string v2, "pause() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 687
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    .line 691
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected pauseInternal()Z
    .locals 3

    .line 721
    const-string v0, "pauseInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->waitUntilFirstVideoAndAudioFrameWritten()V

    .line 726
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->pause()V

    .line 728
    const-string v0, "pauseInternal() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pauseInternal() X failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 733
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method protected playStartSound()V
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playStartSound() E required:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStartSound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStartSound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const-string p0, "playStartSound() X not required"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 342
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    .line 345
    :cond_1
    const-string p0, "playStartSound() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)Z
    .locals 5

    .line 350
    const-string v0, "prepare() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    const-wide/16 v1, 0x0

    .line 352
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    .line 353
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 354
    :try_start_0
    new-array v3, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v4, v3, v0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    const-string p0, "prepare() X failed : illegal state"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 356
    monitor-exit v1

    return v0

    .line 359
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 360
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    const-string p0, "prepare() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p0

    .line 361
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepareInternal() E mic:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsMicrophoneEnabled:Z

    .line 401
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasMaxDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 404
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecordingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 411
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setInputSurface(Landroid/view/Surface;)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 417
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 420
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "prepareInternal() X success:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return p1
.end method

.method public release()Z
    .locals 8

    const-string v0, "release() X failed : "

    .line 803
    const-string v1, "release() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 807
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 808
    :try_start_0
    new-array v3, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 809
    const-string p0, "release() X already released"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 810
    monitor-exit v1

    return v6

    :cond_0
    const/4 v3, 0x3

    .line 812
    new-array v4, v3, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v7, v4, v5

    sget-object v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v7, v4, v6

    sget-object v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v7, v4, v2

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 814
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stop()V
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 816
    :try_start_2
    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 817
    monitor-exit v1

    return v5

    .line 820
    :cond_1
    :goto_0
    new-array v0, v3, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v0, v5

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v0, v6

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v0

    .line 824
    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 825
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 828
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 848
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 851
    :goto_1
    const-string p0, "release() X success"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return v6

    :catchall_0
    move-exception p0

    .line 848
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 825
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method protected releaseInternal()V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->release()V

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorderAccessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 858
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecordingSurface:Landroid/view/Surface;

    return-void
.end method

.method public reset()Z
    .locals 3

    .line 863
    const-string v0, "reset() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 867
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResetTask-IA;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 868
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    const-string p0, "reset() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 868
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resetInternal()Z
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x1

    return p0
.end method

.method public resume()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 741
    const-string v1, "resume() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 744
    :try_start_0
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 749
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 750
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const-string p0, "resume() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 745
    :cond_0
    :try_start_1
    const-string v2, "resume() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 746
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    .line 750
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected resumeInternal()Z
    .locals 3

    .line 780
    const-string v0, "resumeInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->resume()V

    .line 784
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->resume()V

    .line 791
    :goto_0
    const-string v0, "resumeInternal() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resumeInternal() X failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 796
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMaxDurationMillis(J)V
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setMaxDurationMillis(J)V

    return-void
.end method

.method public setMaxFileSizeBytes(J)V
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setMaxFileSizeBytes(J)V

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 905
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setOrientationHint(I)V

    return-void
.end method

.method public setOutputFilePath(Ljava/lang/String;)V
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setOutputFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setStorageWriteNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    return-void
.end method

.method public setUserSoundSetting(Z)V
    .locals 0

    .line 920
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    return-void
.end method

.method public setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .locals 0

    .line 915
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    return-void
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 426
    const-string/jumbo v1, "start() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 429
    :try_start_0
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->playStartSound()V

    .line 436
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 437
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 438
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    const-string/jumbo p0, "start() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 430
    :cond_0
    :try_start_1
    const-string/jumbo v2, "start() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 431
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    .line 438
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected startInternal()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 547
    const-string/jumbo v0, "startInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->start()V

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->reset(J)V

    goto :goto_0

    .line 558
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    const-string/jumbo p0, "startInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startInternal() X failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "Fail to verify state. state:"

    .line 572
    const-string/jumbo v1, "stop() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x3

    .line 575
    :try_start_0
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 581
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 582
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    const-string/jumbo p0, "stop() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 576
    :cond_0
    :try_start_1
    const-string/jumbo v2, "stop() X failed : illegal state"

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 577
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    .line 582
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopAudioRecording()V
    .locals 0

    .line 592
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object p0

    .line 593
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAudioRecording()V

    return-void
.end method

.method protected stopInternal()Z
    .locals 3

    const-string/jumbo v0, "stopInternal() X failed : "

    .line 649
    const-string/jumbo v1, "stopInternal() E"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 651
    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    .line 654
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->waitUntilFirstVideoAndAudioFrameWritten()V

    .line 656
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 657
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsCameraErrorDetected:Z

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopOnCameraError()V

    goto :goto_0

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 676
    const-string/jumbo p0, "stopInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 669
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0

    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 674
    throw v0
.end method

.method public stopOnCameraError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    .line 598
    const-string/jumbo v0, "stopOnCameraError() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsCameraErrorDetected:Z

    .line 601
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stop()V

    .line 603
    const-string/jumbo p0, "stopOnCameraError() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected varargs verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z
    .locals 5

    .line 154
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 155
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected waitUntilFirstVideoAndAudioFrameWritten()V
    .locals 3

    .line 956
    const-string/jumbo v0, "waitUntilFirstVideoAndAudioFrameWritten() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 960
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 961
    const-string/jumbo p0, "waitUntilFirstVideoAndAudioFrameWritten() timed-out"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 969
    :catch_0
    const-string/jumbo p0, "waitUntilFirstVideoAndAudioFrameWritten() interrupted at mWaitUntilWriting.await()"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 973
    :cond_1
    :goto_0
    const-string/jumbo p0, "waitUntilFirstVideoAndAudioFrameWritten() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method
