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

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1690
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    const-wide/16 v0, 0x0

    .line 1691
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1692
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1724
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1725
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    const/4 v0, 0x0

    .line 1726
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    return-void
.end method

.method public getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 5

    .line 1710
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    if-eqz v0, :cond_0

    .line 1711
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_0

    .line 1712
    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1714
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_0

    .line 1716
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AfDoneKeepingTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1718
    :cond_2
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->getType(J)Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    move-result-object p0

    .line 1720
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getAfDoneKeepingTimeParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    return-object p0
.end method

.method public updateContinuousCapture(Z)V
    .locals 0

    .line 1695
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    return-void
.end method

.method public updateTimeAfDone(J)V
    .locals 0

    .line 1699
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    return-void
.end method

.method public updateTimeCapture(J)V
    .locals 4

    .line 1703
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1704
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    :cond_0
    return-void
.end method
