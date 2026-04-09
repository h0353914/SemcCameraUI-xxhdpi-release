.class public Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
.super Ljava/lang/Object;
.source "DoubleTapInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;
    }
.end annotation


# instance fields
.field public doubleTapMinTime:I

.field public doubleTapSlopSquare:I

.field public doubleTapTimeout:I

.field public doubleTapTimeoutReal:I

.field public firstDown:Landroid/view/MotionEvent;

.field public firstDownTime:J

.field public firstDownX:F

.field public firstDownY:F

.field public firstUpTime:J

.field public isLearningMode:Z

.field public secondDown:Landroid/view/MotionEvent;

.field public secondDownTime:J

.field public secondDownX:F

.field public secondDownY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doubleTapMinTime(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 0

    .line 110
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapMinTime:I

    return-object p0
.end method

.method doubleTapSlopSquare(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 0

    .line 125
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapSlopSquare:I

    return-object p0
.end method

.method doubleTapTimeout(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 0

    .line 115
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapTimeout:I

    return-object p0
.end method

.method doubleTapTimeoutReal(I)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 0

    .line 120
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapTimeoutReal:I

    return-object p0
.end method

.method firstDown(Landroid/view/MotionEvent;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 2

    .line 89
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstDown:Landroid/view/MotionEvent;

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstDownTime:J

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstDownX:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstDownY:F

    return-object p0
.end method

.method firstUpTime(J)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstUpTime:J

    return-object p0
.end method

.method public getDeltaTime()J
    .locals 4

    .line 62
    iget-wide v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDownTime:J

    iget-wide v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstUpTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDeltaX()J
    .locals 2

    .line 66
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstDownX:F

    float-to-int v0, v0

    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDownX:F

    float-to-int p0, p0

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDeltaY()J
    .locals 2

    .line 71
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->firstDownY:F

    float-to-int v0, v0

    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDownY:F

    float-to-int p0, p0

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDoubleTapTimeout()J
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->isLearningMode:Z

    if-eqz v0, :cond_0

    .line 77
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapTimeoutReal:I

    int-to-long v0, p0

    return-wide v0

    .line 79
    :cond_0
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapTimeout:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getStatus()Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->getDeltaTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->getDoubleTapTimeout()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 44
    sget-object p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->SlowTap:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->getDeltaTime()J

    move-result-wide v0

    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapMinTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 47
    sget-object p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->FastTap:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    return-object p0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->getDeltaX()J

    move-result-wide v0

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->getDeltaY()J

    move-result-wide v2

    mul-long/2addr v0, v0

    mul-long/2addr v2, v2

    add-long/2addr v0, v2

    .line 52
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->doubleTapSlopSquare:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    .line 54
    sget-object p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->FarPosition:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    return-object p0

    .line 57
    :cond_3
    sget-object p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->Success:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    return-object p0
.end method

.method isLearningMode(Z)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->isLearningMode:Z

    return-object p0
.end method

.method secondDown(Landroid/view/MotionEvent;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 2

    .line 102
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDown:Landroid/view/MotionEvent;

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDownTime:J

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDownX:F

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;->secondDownY:F

    return-object p0
.end method
