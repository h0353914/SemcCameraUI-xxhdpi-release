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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDurationMillsFromAverage(JJ)J
    .locals 8

    long-to-double v0, p0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    long-to-double v2, p2

    div-double/2addr v0, v2

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    .line 48
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 51
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 52
    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMaxDuration: available storage size[kbyte]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v5, p1

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 54
    new-array p0, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMaxDuration: current video size average file size[kbyte/min]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 56
    new-array p0, v4, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getMaxDuration: calculated max duration sec: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-wide v2
.end method

.method public static getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .locals 3

    .line 73
    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p0

    const-wide/32 v0, 0xf000

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3c00

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    return-wide p0
.end method

.method public static isAudioPolicyActive(Landroid/content/Context;)Z
    .locals 2

    .line 93
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "isAudioPolicyActive: Android N or later"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 95
    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_record_audio"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 99
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 100
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->DISALLOW_RECORD_AUDIO:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method
