.class public Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
.super Ljava/lang/Object;
.source "FpsMonitor.java"


# instance fields
.field private mHeadSampleTime:J

.field private final mIntervalCount:I

.field private final mResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mResult:Ljava/util/List;

    .line 29
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mIntervalCount:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mHeadSampleTime:J

    return-void
.end method

.method private addResult(J)V
    .locals 3

    .line 67
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mHeadSampleTime:J

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, v0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mResult:Ljava/util/List;

    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    add-int/lit8 p0, p0, -0x1

    int-to-double v1, p0

    div-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addSample(J)V
    .locals 3

    .line 49
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    .line 50
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mIntervalCount:I

    if-ge v0, v2, :cond_0

    .line 51
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    if-ne v0, v1, :cond_1

    .line 52
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mHeadSampleTime:J

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->addResult(J)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public addSampleMillis(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    mul-long/2addr p1, v0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->addSample(J)V

    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mResult:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mSampleCount:I

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->mHeadSampleTime:J

    return-void
.end method
