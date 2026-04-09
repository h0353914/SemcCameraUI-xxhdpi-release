.class public Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;
.super Ljava/lang/Object;
.source "FrontAngleChangeCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field public static final ZOOM_CHANGE_ANGLE_LOOP_COUNT:I = 0x1


# instance fields
.field private mStepInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .locals 5

    const/4 v0, 0x0

    .line 23
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 25
    iget v1, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 26
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-ne p2, v1, :cond_0

    .line 27
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    goto :goto_0

    .line 29
    :cond_0
    div-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    .line 33
    :cond_1
    :goto_0
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    sub-int v3, v1, p2

    .line 34
    iget v4, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-ge v3, v4, :cond_2

    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 35
    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    add-int/2addr v1, p0

    goto :goto_1

    :cond_3
    iget p0, p0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;->mStepInterval:I

    sub-int/2addr v1, p0

    :goto_1
    if-eqz v0, :cond_4

    if-le v1, p2, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 40
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-le p0, v1, :cond_5

    .line 41
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    goto :goto_2

    :cond_5
    move p2, v1

    .line 44
    :goto_2
    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
