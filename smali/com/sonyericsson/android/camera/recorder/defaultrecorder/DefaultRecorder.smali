.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;
.super Ljava/lang/Object;
.source "DefaultRecorder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;
    }
.end annotation


# static fields
.field private static final DELAY_AUDIO_DURATION_IN_MILLIS:I = 0x0

.field private static final MUTE_START_RECORD_SOUND_DURATION_IN_MILLIS:I = 0x0

.field private static final REQUEST_PROGRESS_INTERVAL_IN_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DefaultRecorder"

.field private static final TRACE:Z = false


# instance fields
.field private mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mIsMicrophoneEnabled:Z

.field private mIsNeedToDeleteFile:Z

.field private mIsStarted:Z

.field private mLastProgressMillis:J

.field private mMediaUri:Landroid/net/Uri;

.field private mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field private mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private mOutputPath:Ljava/lang/String;

.field private final mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

.field private mRecordingSurface:Landroid/view/Surface;

.field private mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field private final mVideoSource:I

.field private mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsMicrophoneEnabled(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastProgressMillis(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedToDeleteFile(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsNeedToDeleteFile:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastProgressMillis(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetNameForErrorCode(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->getNameForErrorCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(IZLcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 82
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 84
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mMediaUri:Landroid/net/Uri;

    .line 100
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    .line 102
    new-instance p1, Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-direct {p1, p2, p5}, Lcom/sonymobile/android/media/MediaRecorderWrapper;-><init>(ZLandroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 103
    invoke-virtual {p1, p2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->useIntelligentActive(Z)V

    return-void
.end method

.method private adjustAudioSettings()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->adjustAudioStartVolume(I)V

    .line 532
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->adjustAudioTimestamp(J)V

    return-void
.end method

.method private static getNameForErrorCode(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 546
    :cond_0
    const-string p0, "MEDIA_ERROR_SERVER_DIED"

    return-object p0

    .line 543
    :cond_1
    const-string p0, "MEDIA_RECORDER_ERROR_UNKNOWN"

    return-object p0
.end method

.method private insertVideoMedia(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)Landroid/net/Uri;
    .locals 4

    .line 508
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 513
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 514
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 515
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 516
    const-string v3, "_display_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string p2, "mime_type"

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getMimeType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string p2, "relative_path"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string p2, "is_pending"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    invoke-static {p0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 522
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private prepareReceiveRecordingInfo()Z
    .locals 1

    .line 312
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

    .line 403
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v0

    .line 407
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result v1

    .line 408
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isHdr()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 409
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 410
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getVideoHdrRecordingProfile()I

    move-result p1

    .line 409
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xf00

    const/16 v4, 0x8

    if-lt v0, v2, :cond_3

    const/16 v2, 0x66c

    if-lt v1, v2, :cond_3

    .line 415
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoCodec()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 416
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v4, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    .line 420
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v3, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x280

    if-lt v0, p1, :cond_4

    const/16 p1, 0x1e0

    if-lt v1, p1, :cond_4

    .line 425
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v4, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    .line 429
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0, v3, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingProfileLevel(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private setupOutput(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)Z
    .locals 6

    .line 449
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "openFileDescriptor fd is null."

    const-string v3, "openFileDescriptor failed."

    const-string v4, "rw"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 453
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    .line 459
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v5

    .line 464
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 468
    const-string/jumbo p1, "setOutputFile() failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5

    :catch_1
    move-exception p0

    .line 455
    invoke-static {v3, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5

    .line 476
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 477
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 479
    :try_start_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->insertVideoMedia(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mMediaUri:Landroid/net/Uri;

    const/4 p3, 0x0

    .line 480
    invoke-virtual {p1, p2, v4, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p1, :cond_3

    .line 488
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 489
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mMediaUri:Landroid/net/Uri;

    if-eqz p0, :cond_2

    .line 490
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    :cond_2
    return v5

    .line 495
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFile(Ljava/io/FileDescriptor;)V

    return v1

    :catch_2
    move-exception p0

    .line 482
    invoke-static {v3, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return v5
.end method

.method private setupParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 5

    .line 324
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setAudioSource(I)V

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoSource(I)V

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getFileFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFormat(I)V

    .line 328
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getQuality()I

    move-result v0

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3ef

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioBitRate()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setAudioEncodingBitRate(I)V

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioSampleRate()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setAudioSamplingRate(I)V

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioChannels()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setAudioChannels(I)V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioCodec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setAudioEncoder(I)V

    .line 339
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z

    goto :goto_1

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoSource(I)V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getFileFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOutputFormat(I)V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoFrameRate(I)V

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 350
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v2

    .line 351
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result v3

    .line 349
    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoSize(II)V

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRate()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingBitRate(I)V

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoCodec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncoder(I)V

    .line 354
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_2

    .line 355
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->isAlbumExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoFrameRate(I)V

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setCaptureRate(D)V

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    const v2, 0xbebc20

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoEncodingBitRate(I)V

    goto :goto_2

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setVideoFrameRate(I)V

    .line 362
    :goto_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->setVideoEncodingProfileLevel(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V

    .line 367
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasMaxDuration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setMaxDuration(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :catch_0
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasMaxFileSize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    :catch_1
    :cond_4
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    .line 384
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 385
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 383
    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setLocation(FF)V

    .line 388
    :cond_5
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->hasOrientationHint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->orientationHint()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOrientationHint(I)V

    .line 392
    :cond_6
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->videoSavingRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->setupOutput(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)Z

    .line 393
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->adjustAudioSettings()V

    return v1
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 50
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 2

    .line 129
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported with Surface source"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAsyncStopSupported()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->pause()Z

    return-void
.end method

.method public prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 8

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener-IA;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    new-instance v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener-IA;)V

    invoke-virtual {v0, v7}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsStarted:Z

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->setupParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->release()V

    return v0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->prepareReceiveRecordingInfo()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->setInputSurface(Landroid/view/Surface;)V

    .line 162
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->releaseEncoder()V

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOutputPath:Ljava/lang/String;

    .line 171
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->videoSavingRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-wide/16 p1, 0x0

    .line 173
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J

    const/4 p0, 0x1

    return p0

    .line 165
    :catch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->release()V

    return v0
.end method

.method public release()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->reset()V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->release()V

    .line 261
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsNeedToDeleteFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOutputPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->deleteVideoFile(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;)V

    .line 266
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsNeedToDeleteFile:Z

    :cond_0
    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecordingSurface:Landroid/view/Surface;

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "release error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 276
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsNeedToDeleteFile:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOutputPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->deleteVideoFile(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;)V

    .line 281
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsNeedToDeleteFile:Z

    goto :goto_1

    .line 282
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsStarted:Z

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOutputPath:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->deleteVideoFile(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->reset()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->resume()Z

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecordingSurface:Landroid/view/Surface;

    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 120
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 121
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    .line 122
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 696
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setLocation() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDurationMillis(J)V
    .locals 0

    .line 701
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setMaxDurationMillis() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxFileSizeBytes(J)V
    .locals 0

    .line 706
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setMaxFileSizeBytes() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 721
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setOrientationHint() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOutputFilePath(Ljava/lang/String;)V
    .locals 0

    .line 711
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setOutputFilePath() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .locals 0

    .line 716
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setVideoSavingRequest() is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->start()V

    .line 184
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsStarted:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsNeedToDeleteFile:Z

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stop()V

    .line 206
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stop error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAsync()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stopAsync()V

    .line 235
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopAsync error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAudioRecording()V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stopAudioRecording()V

    return-void
.end method

.method public stopOnCameraError()V
    .locals 2

    .line 215
    const-string/jumbo v0, "stopOnCameraError() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->trace(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->stopOnError()V

    .line 218
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopOnCameraError error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 222
    :goto_0
    const-string/jumbo p0, "stopOnCameraError() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public waitUntilStopCompleted()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mRecorder:Lcom/sonymobile/android/media/MediaRecorderWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->waitUntilStopCompleted()V

    return-void
.end method
