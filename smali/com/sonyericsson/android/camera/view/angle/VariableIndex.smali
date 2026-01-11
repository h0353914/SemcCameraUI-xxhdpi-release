.class public Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
.super Ljava/lang/Object;
.source "VariableIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;
    }
.end annotation


# instance fields
.field private mBaseStageNumber:F

.field protected mIndex:I

.field protected final mMaxIndex:I

.field protected final mMinIndex:I

.field private mZoomMagnificationCoefficient:F


# direct methods
.method public constructor <init>(IIFFF)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    .line 69
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 70
    iput p4, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    .line 71
    iput p5, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    .line 72
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex(FI)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method

.method public constructor <init>(IIIFF)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    .line 51
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 52
    iput p4, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    .line 53
    iput p5, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    .line 54
    iput p3, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method

.method private getIndex(FI)I
    .locals 2

    .line 85
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio(I)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    const p2, 0x3f1d70a4    # 0.615f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    float-to-double v0, p0

    div-double/2addr p1, v0

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private getRatio(I)F
    .locals 2

    int-to-float p1, p1

    .line 101
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mZoomMagnificationCoefficient:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mBaseStageNumber:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const p1, 0x3f1d70a4    # 0.615f

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return p0
.end method

.method public getRatio()F
    .locals 3

    .line 97
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getRatio(I)F

    move-result p0

    sub-float/2addr p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method setIndex(I)V
    .locals 2

    .line 109
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set ratio index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 112
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method
