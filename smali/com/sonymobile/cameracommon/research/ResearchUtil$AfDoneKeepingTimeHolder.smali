.class Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AfDoneKeepingTimeHolder"
.end annotation


# instance fields
.field private mContinuousCapture:Z

.field private mTimeAfDone:J

.field private mTimeCapture:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1381
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    const-wide/16 v0, 0x0

    .line 1382
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1383
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1415
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1416
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    const/4 v0, 0x0

    .line 1417
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    return-void
.end method

.method public getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 7

    .line 1401
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    if-eqz v0, :cond_0

    .line 1402
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_0

    .line 1403
    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1405
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_0

    .line 1407
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AfDoneKeepingTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1409
    :cond_2
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->getType(J)Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    move-result-object p0

    .line 1411
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getAfDoneKeepingTimeParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    return-object p0
.end method

.method public updateContinuousCapture(Z)V
    .locals 0

    .line 1386
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    return-void
.end method

.method public updateTimeAfDone(J)V
    .locals 0

    .line 1390
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    return-void
.end method

.method public updateTimeCapture(J)V
    .locals 4

    .line 1394
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1395
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    :cond_0
    return-void
.end method
