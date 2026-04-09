.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;
.super Ljava/lang/Object;
.source "DefaultRecorder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;
    }
.end annotation


# static fields
.field private static final DELAY_AUDIO_DURATION_IN_MILLIS:I = 0x64

.field private static final MUTE_START_RECORD_SOUND_DURATION_IN_MILLIS:I = 0x384

.field private static final REQUEST_PROGRESS_INTERVAL_IN_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DefaultRecorder"

.field private static final TRACE:Z = false


# instance fields
.field private mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mIsMicrophoneEnabled:Z

.field private mLastProgressMillis:J

.field private mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field private mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

.field private final mVideoSource:I

.field private mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 75
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    .line 77
    new-instance p1, Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-direct {p1, p2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;-><init>(Z)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, p2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->useIntelligentActive(Z)V

    return-void
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->getNameForErrorCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J

    return-wide p1
.end method

.method private adjustAudioSettings()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->adjustAudioStartVolume(I)V

    .line 418
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->adjustAudioTimestamp(J)V

    return-void
.end method

.method private static getNameForErrorCode(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MEDIA_ERROR_SERVER_DIED"

    return-object p0

    :cond_1
    const-string p0, "MEDIA_RECORDER_ERROR_UNKNOWN"

    return-object p0
.end method

.method private prepareReceiveRecordingInfo()Z
    .locals 1

    .line 238
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->requestProgressInfo(I)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setVideoEncodingProfileLevel(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 310
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 314
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 315
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isHdr()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 316
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 317
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getVideoHdrRecordingProfile()I

    move-result p1

    .line 316
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xf00

    const/16 v4, 0x8

    if-lt v0, v2, :cond_3

    const/16 v2, 0x870

    if-lt v1, v2, :cond_3

    .line 320
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object p1

    iget p1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 321
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v4, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v3, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x280

    if-lt v0, p1, :cond_4

    const/16 p1, 0x1e0

    if-lt v1, p1, :cond_4

    .line 330
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v4, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    .line 334
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v3, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private setupOutput(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    .line 354
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 357
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rw"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez p1, :cond_0

    const-string p0, "openFileDescriptor fd is null."

    .line 363
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    .line 368
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "setOutputFile() failed."

    .line 372
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catch_1
    move-exception p0

    const-string p1, "openFileDescriptor failed."

    .line 359
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 380
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    invoke-static {p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq v0, v3, :cond_2

    .line 382
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFile(Ljava/lang/String;)V

    return v1

    .line 386
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 388
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getPathAfterDcim(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 387
    invoke-static {p1, v0, p2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 391
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rw"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 396
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez p1, :cond_3

    const-string p0, "openFileDescriptor fd is null."

    .line 397
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    .line 401
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFile(Ljava/io/FileDescriptor;)V

    return v1

    :catch_2
    move-exception p0

    const-string p1, "openFileDescriptor failed."

    .line 393
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_4
    return v2
.end method

.method private setupParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 5

    .line 250
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setAudioSource(I)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoSource(I)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 254
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoSource(I)V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFormat(I)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoFrameRate(I)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 262
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 263
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 261
    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoSize(II)V

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingBitRate(I)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncoder(I)V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z

    .line 269
    :goto_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->setVideoEncodingProfileLevel(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V

    .line 274
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasMaxDuration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setMaxDuration(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :catch_0
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasMaxFileSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :catch_1
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 291
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 292
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 290
    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setLocation(FF)V

    .line 295
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasOrientationHint()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->orientationHint()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOrientationHint(I)V

    .line 299
    :cond_4
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->setupOutput(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 300
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->adjustAudioSettings()V

    return v1
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 2

    .line 100
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 101
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported with Surface source"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public isAsyncStopSupported()Z
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->pause()Z

    return-void
.end method

.method public prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;-><init>(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    new-instance v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$1;)V

    invoke-virtual {v0, v7}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->setupParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->release()V

    return p2

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->prepareReceiveRecordingInfo()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    .line 130
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p1, 0x0

    .line 138
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J

    const/4 p0, 0x1

    return p0

    .line 133
    :catch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->release()V

    return p2
.end method

.method public release()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->reset()V

    .line 211
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->reset()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->resume()Z

    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 91
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 92
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    .line 93
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 572
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setLocation() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDurationMillis(J)V
    .locals 0

    .line 577
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setMaxDurationMillis() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxFileSizeBytes(J)V
    .locals 0

    .line 582
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setMaxFileSizeBytes() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 592
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setOrientationHint() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOutputFilePath(Ljava/lang/String;)V
    .locals 0

    .line 587
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setOutputFilePath() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stop()V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 168
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopAsync()V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stopAsync()V

    return-void
.end method

.method public stopAudioRecording()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stopAudioRecording()V

    return-void
.end method

.method public stopOnCameraError()V
    .locals 1

    const-string v0, "stopOnCameraError() E"

    .line 176
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->trace(Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stopOnError()V

    const-string p0, "stopOnCameraError() X"

    .line 178
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public waitUntilStopCompleted()V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->waitUntilStopCompleted()V

    return-void
.end method
