.class public Lcom/sonyericsson/cameracommon/utility/RecordingUtil;
.super Ljava/lang/Object;
.source "RecordingUtil.java"


# static fields
.field private static final DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final TAG:Ljava/lang/String; = "RecordingUtil"

.field public static final UPDATE_REMAIN_INTERVAL:I = 0xa

.field public static final VIDEO_PROGRESS_BAR_UPDATE_INTERVAL:I = 0x64

.field public static final VIDEO_REC_TIME_UPDATE_INTERVAL_MILLISEC:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDurationMillsFromAverage(JJ)J
    .locals 6

    long-to-double v0, p0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    long-to-double v2, p2

    div-double/2addr v0, v2

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    .line 47
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 50
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_0

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMaxDuration: available storage size[kbyte]: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getMaxDuration: current video size average file size[kbyte/min]: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getMaxDuration: calculated max duration sec: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-wide v2
.end method

.method public static getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .locals 3

    .line 72
    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    const-wide/32 v0, 0xb400

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    return-wide p0
.end method

.method public static isAudioPolicyActive(Landroid/content/Context;)Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "isAudioPolicyActive: Android N or later"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 94
    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_record_audio"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
