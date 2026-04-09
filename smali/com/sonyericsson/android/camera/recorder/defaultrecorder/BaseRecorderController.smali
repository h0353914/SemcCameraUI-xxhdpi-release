.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    }
.end annotation


# static fields
.field private static final TIME_OF_START_SOUND_TO_COMPLETE_IN_MILLI:I = 0x12c

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

.field private final mDeviceHandler:Landroid/os/Handler;

.field private mIsAdjustRecordingTimeByRecorderNotification:Z

.field protected mIsCameraErrorDetected:Z

.field private mIsMicrophoneEnabled:Z

.field private final mIsStartSoundRequired:Z

.field private mIsStopSoundAlreadyPlayed:Z

.field private final mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

.field private final mIsStopSoundRequired:Z

.field private mIsUserSoundSettingOn:Z

.field private mLastNotifyDurationMillis:J

.field private final mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

.field private mMaxDurationMillis:J

.field private final mMinDurationMillis:J

.field private final mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field private final mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

.field private final mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

.field private final mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

.field private final mShouldWaitStartSound:Z

.field private mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field protected final mStateLock:Ljava/lang/Object;

.field private mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

.field private final mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JILandroid/os/Handler;ZZZZ)V
    .locals 2
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
            "JI",
            "Landroid/os/Handler;",
            "ZZZZ)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    .line 803
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

    .line 852
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$2;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    .line 882
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    .line 901
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 930
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$5;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 1040
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$6;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    const-string v0, "BaseRecorderController() E"

    .line 209
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 211
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    .line 213
    iput-object p5, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 214
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    .line 215
    sget-object p1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 216
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    int-to-long v0, p8

    invoke-direct {p1, p2, p4, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;J)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    .line 220
    iput-object p9, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mDeviceHandler:Landroid/os/Handler;

    .line 222
    iput-wide p6, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    .line 224
    iput-boolean p10, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStartSoundRequired:Z

    .line 225
    iput-boolean p11, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mShouldWaitStartSound:Z

    .line 226
    iput-boolean p12, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundRequired:Z

    .line 227
    iput-boolean p13, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    .line 230
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    .line 231
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object p4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    iget-object p5, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setListener(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    const-string p0, "BaseRecorderController() X"

    .line 239
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->displayMaxDuration()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyDuration(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mOnTickCallback:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mShouldWaitStartSound:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsMicrophoneEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->playStopSound()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyFinishResult(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    return-void
.end method

.method private displayMaxDuration()V
    .locals 6

    .line 1065
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$7;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCameraActionSound:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/Accessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method private notifyDuration(J)V
    .locals 4

    .line 1016
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    .line 1018
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->isMeasuring()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 1021
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->reset(J)V

    .line 1024
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->resume()V

    .line 1026
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;->notifyWriteStorage()V

    .line 1033
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->onRecordProgress(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1026
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
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playStopSound()V
    .locals 4

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStopSound() E required:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStopSound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 808
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStopSound()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 810
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 811
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playStopSound() is-already-played:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 812
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 813
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    move v0, v3

    .line 816
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 818
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    .line 820
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 816
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const-string p0, "playStopSound() X"

    .line 824
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private shouldPlayStartSound()Z
    .locals 1

    .line 90
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

    .line 94
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
    .locals 2

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeTo() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-void
.end method

.method protected disableAdjustRecordingTimeByRecorderNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    return-void
.end method

.method protected executeInBackground(Ljava/lang/Runnable;)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getCallbackHandler()Landroid/os/Handler;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    return-object p0
.end method

.method public getRecordingTimeMillis()J
    .locals 2

    .line 279
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getReferenceClock()Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    return-object p0
.end method

.method public isPaused()Z
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 252
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isReady()Z
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 245
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRecording()Z
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 266
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isStarting()Z
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 259
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isStopping()Z
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 273
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected notifyError()V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$OnErrorTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "pause() E"

    .line 592
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 595
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pause() X failed : illegal state"

    .line 596
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 597
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to verify state. state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 600
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PauseTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "pause() X"

    .line 603
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 601
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected pauseInternal()Z
    .locals 3

    const-string v0, "pauseInternal() E"

    .line 631
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 634
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->waitUntilFirstVideoFrameWritten()V

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->pause()V

    const-string v0, "pauseInternal() X"

    .line 638
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseInternal() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 643
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method protected playStartSound()V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStartSound() E required:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStartSound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->shouldPlayStartSound()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "playStartSound() X not required"

    .line 296
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getCameraActionSound()Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(IZ)V

    :cond_1
    const-string p0, "playStartSound() X"

    .line 305
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 5

    const-string v0, "prepare() E"

    .line 310
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsStopSoundAlreadyPlayed:Z

    const-wide/16 v1, 0x0

    .line 312
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mLastNotifyDurationMillis:J

    .line 313
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 314
    :try_start_0
    new-array v3, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v4, v3, v0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "prepare() X failed : illegal state"

    .line 315
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 316
    monitor-exit v1

    return v0

    .line 319
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 320
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 321
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "prepare() X"

    .line 323
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p0

    .line 321
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareInternal() E mic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsMicrophoneEnabled:Z

    .line 358
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasMaxDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 361
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMaxDurationMillis:J

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 369
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 372
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareInternal() X success:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return p1
.end method

.method public release()Z
    .locals 7

    const-string v0, "release() E"

    .line 713
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 718
    :try_start_0
    new-array v2, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "release() X already released"

    .line 719
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 720
    monitor-exit v0

    return v5

    :cond_0
    const/4 v2, 0x3

    .line 722
    new-array v3, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v6, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v6, v3, v4

    sget-object v6, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v6, v3, v5

    sget-object v6, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v6, v3, v1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 724
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stop()V
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 726
    :try_start_2
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release() X failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 727
    monitor-exit v0

    return v4

    .line 730
    :cond_1
    :goto_0
    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    .line 734
    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 735
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 738
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 756
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 758
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const-string p0, "release() X success"

    .line 761
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return v5

    :catchall_0
    move-exception p0

    .line 758
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 735
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method protected releaseInternal()V
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->release()V

    return-void
.end method

.method public resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "resume() E"

    .line 651
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 654
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "resume() X failed : illegal state"

    .line 655
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 656
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to verify state. state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 659
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$ResumeTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 660
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "resume() X"

    .line 662
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 660
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected resumeInternal()Z
    .locals 3

    const-string v0, "resumeInternal() E"

    .line 690
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->resume()V

    .line 694
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->resume()V

    :goto_0
    const-string v0, "resumeInternal() X"

    .line 701
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeInternal() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 706
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMaxDurationMillis(J)V
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setMaxDurationMillis(J)V

    return-void
.end method

.method public setMaxFileSizeBytes(J)V
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setMaxFileSizeBytes(J)V

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setOrientationHint(I)V

    return-void
.end method

.method public setOutputFilePath(Ljava/lang/String;)V
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->setOutputFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setStorageWriteNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    return-void
.end method

.method public setUserSoundSetting(Z)V
    .locals 0

    .line 796
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsUserSoundSettingOn:Z

    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "start() E"

    .line 378
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 381
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "start() X failed : illegal state"

    .line 382
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 383
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to verify state. state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->playStartSound()V

    .line 388
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 389
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StartTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 390
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "start() X"

    .line 392
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 390
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected startInternal()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "startInternal() E"

    .line 457
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->start()V

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;

    const-wide/16 v3, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyProgressTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;J)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsAdjustRecordingTimeByRecorderNotification:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->reset(J)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string p0, "startInternal() X"

    .line 478
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInternal() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 474
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "stop() E"

    .line 484
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 487
    :try_start_0
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "stop() X failed : illegal state"

    .line 488
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 489
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to verify state. state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mState:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 493
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$StopTask;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$1;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 494
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "stop() X"

    .line 496
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 494
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopAudioRecording()V
    .locals 0

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object p0

    .line 505
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAudioRecording()V

    return-void
.end method

.method protected stopInternal()Z
    .locals 3

    const-string v0, "stopInternal() E"

    .line 559
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 561
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStorageWriteNotifier:Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;

    .line 564
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->waitUntilFirstVideoFrameWritten()V

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mReferenceClock:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 567
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsCameraErrorDetected:Z

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopOnCameraError()V

    goto :goto_0

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    const-string p0, "stopInternal() X"

    .line 586
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 579
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopInternal() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 583
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    return v0

    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    .line 584
    throw v0
.end method

.method public stopOnCameraError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "stopOnCameraError() E"

    .line 510
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mIsCameraErrorDetected:Z

    .line 513
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stop()V

    const-string p0, "stopOnCameraError() X"

    .line 515
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected varargs verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z
    .locals 5

    .line 123
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 124
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

.method protected waitUntilFirstVideoFrameWritten()V
    .locals 3

    const-string v0, "waitUntilFirstVideoFrameWritten() E"

    .line 832
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mWaitUntilWriting:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "waitUntilFirstVideoFrameWritten() timed-out"

    .line 837
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mMinDurationMillis:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "waitUntilFirstVideoFrameWritten() interrupted at mWaitUntilWriting.await()"

    .line 845
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p0, "waitUntilFirstVideoFrameWritten() X"

    .line 849
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method
