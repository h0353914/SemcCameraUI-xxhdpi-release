.class public Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;
.super Lcom/sonyericsson/cameracommon/storage/SavingRequest;
.source "VideoSavingRequest.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoSavingRequest"


# instance fields
.field public final video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .line 46
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "VideoSavingRequest: at created."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->log()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V
    .locals 5

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    return-wide v0
.end method

.method public log()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->log()V

    .line 76
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->log()V

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    .line 68
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDuration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    return-void
.end method
