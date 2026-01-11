.class public Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;
.super Ljava/lang/Object;
.source "JumpZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# instance fields
.field private INTERVAL_STEP:I

.field private final mIsZoomIn:Z

.field private mStartStep:I

.field private mStopStep:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 13
    iput v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->INTERVAL_STEP:I

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mIsZoomIn:Z

    .line 20
    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStartStep:I

    .line 21
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStopStep:I

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .locals 3

    .line 26
    iget p2, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStartStep:I

    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStopStep:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 27
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStartStep:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mStopStep:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 28
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->mIsZoomIn:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    .line 30
    :goto_0
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    if-ne v1, p2, :cond_1

    return-object p1

    .line 34
    :cond_1
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    .line 35
    iget v2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    sub-int/2addr v2, p2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 36
    :goto_1
    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/JumpZoomStepCalculator;->INTERVAL_STEP:I

    if-eqz v2, :cond_3

    add-int/2addr v1, p0

    goto :goto_2

    :cond_3
    sub-int/2addr v1, p0

    :goto_2
    if-eqz v2, :cond_4

    if-le v1, p2, :cond_4

    move v0, p2

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    if-le v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    .line 46
    :goto_3
    iput v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
