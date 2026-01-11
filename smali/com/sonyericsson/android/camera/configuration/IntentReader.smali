.class public Lcom/sonyericsson/android/camera/configuration/IntentReader;
.super Ljava/lang/Object;
.source "IntentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;
    }
.end annotation


# static fields
.field private static final INVALID:J = -0x1L

.field private static final KEY_CROP:Ljava/lang/String; = "crop"

.field public static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field mVideoMaxDurationInMillisecs:J

.field mVideoMaxFileSizeInBytes:J

.field mVideoQuality:I

.field mhasLimit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    return-void
.end method

.method private readIntent(Landroid/content/Intent;)V
    .locals 14

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### intent action : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 75
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### dump all extra: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_1
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_7

    .line 81
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 83
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#### extra MediaStore.EXTRA_SIZE_LIMIT long: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    cmp-long v5, v3, v1

    const/4 v6, -0x1

    if-nez v5, :cond_4

    .line 89
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 91
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#### extra MediaStore.EXTRA_SIZE_LIMIT int: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    int-to-long v3, v0

    .line 94
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxFileSizeInBytes(J)V

    goto :goto_0

    .line 96
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxFileSizeInBytes(J)V

    .line 100
    :goto_0
    const-string v0, "android.intent.extra.durationLimit"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#### extra MediaStore.EXTRA_DURATION_LIMIT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    int-to-long v3, v0

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    .line 106
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxDurationInMillisecs(J)V

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    .line 108
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxDurationInMillisecs(J)V

    .line 112
    :goto_1
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-long v1, p1

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoQuality(JJJ)V

    goto :goto_2

    .line 115
    :cond_7
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxFileSizeInBytes(J)V

    .line 116
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxDurationInMillisecs(J)V

    .line 117
    iget-wide v10, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    iget-wide v12, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    const-wide/16 v8, -0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoQuality(JJJ)V

    .line 119
    :goto_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "#### intent extra.maxFileSize      : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 121
    :cond_8
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "#### intent extra.maxDuration      : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 123
    :cond_9
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "#### intent extra.quality          : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private setVideoMaxDurationInMillisecs(J)V
    .locals 2

    .line 135
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    :cond_0
    return-void
.end method

.method private setVideoMaxFileSizeInBytes(J)V
    .locals 2

    .line 128
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    :cond_0
    return-void
.end method

.method private setVideoQuality(JJJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:I

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x1

    cmp-long p3, p1, p3

    const/4 p4, 0x1

    if-nez p3, :cond_1

    .line 145
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:I

    goto :goto_0

    :cond_1
    const-wide/16 p5, 0x5

    cmp-long p3, p1, p5

    if-nez p3, :cond_2

    const/4 p1, 0x5

    .line 147
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:I

    goto :goto_0

    :cond_2
    const-wide/16 p5, 0x4

    cmp-long p1, p1, p5

    if-nez p1, :cond_3

    const/4 p1, 0x4

    .line 149
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:I

    goto :goto_0

    .line 151
    :cond_3
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;
    .locals 7

    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->readIntent(Landroid/content/Intent;)V

    .line 68
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    iget v5, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:I

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;-><init>(JJIZ)V

    return-object p1
.end method
