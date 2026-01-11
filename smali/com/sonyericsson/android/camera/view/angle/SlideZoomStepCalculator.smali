.class public Lcom/sonyericsson/android/camera/view/angle/SlideZoomStepCalculator;
.super Ljava/lang/Object;
.source "SlideZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .locals 1

    const/4 p0, 0x0

    .line 17
    aget-object p0, p2, p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_0

    .line 18
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    goto :goto_0

    :cond_0
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 20
    :goto_0
    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    if-ne v0, p2, :cond_1

    return-object p1

    .line 24
    :cond_1
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p0

    .line 25
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p0, p2

    .line 26
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->setIndex(I)V

    return-object p1
.end method
