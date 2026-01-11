.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;
.super Ljava/lang/Object;
.source "TakenStatusVideo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TakenStatusVideo"


# instance fields
.field public mDuration:J

.field public final maxDurationMills:J

.field public final maxFileSizeBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    .line 38
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    .line 39
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    .line 48
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    .line 49
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    .line 50
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    return-void
.end method


# virtual methods
.method public log()V
    .locals 3

    .line 57
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duration         : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 58
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MaxDurationMills : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 59
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MaxFileSizeBytes : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method
