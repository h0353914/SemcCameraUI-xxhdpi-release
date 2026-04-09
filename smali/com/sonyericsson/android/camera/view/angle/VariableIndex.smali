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
.field protected mIndex:I

.field protected final mMaxIndex:I

.field protected final mMinIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    .line 42
    iput p2, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 43
    iput p3, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return p0
.end method

.method public getRatio()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    int-to-float v0, v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method setIndex(I)V
    .locals 2

    .line 68
    iget v0, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-void
.end method
