.class public Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;
.super Ljava/lang/Object;
.source "KeyZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_1_MILLIS:I = 0x1f4

.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_2_MILLIS:I = 0x2ee

.field private static final ZOOM_STEP_THRESHOLD_FOR_ZOOM_LEVER_3_MILLIS:I = 0x3e8


# instance fields
.field final mIsZoomIn:Z

.field final mZoomStartTimeMillis:J


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mZoomStartTimeMillis:J

    .line 22
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mIsZoomIn:Z

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .locals 7

    const/4 v0, 0x0

    .line 33
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 34
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mIsZoomIn:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    goto :goto_0

    :cond_0
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    .line 36
    :goto_0
    iget v3, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    if-ne v3, p2, :cond_1

    return-object p1

    .line 40
    :cond_1
    iget-wide v3, p0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;->mZoomStartTimeMillis:J

    sub-long/2addr v1, v3

    .line 41
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    .line 43
    iget v3, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    sub-int/2addr v3, p2

    const/4 v4, 0x1

    if-gez v3, :cond_2

    move v0, v4

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v1

    const-wide/16 v5, 0x1f4

    if-gtz v3, :cond_4

    cmp-long v3, v1, v5

    if-gez v3, :cond_4

    if-eqz v0, :cond_3

    add-int/2addr p0, v4

    goto :goto_1

    :cond_3
    sub-int/2addr p0, v4

    goto :goto_1

    :cond_4
    cmp-long v3, v5, v1

    const-wide/16 v4, 0x2ee

    if-gtz v3, :cond_6

    cmp-long v3, v1, v4

    if-gez v3, :cond_6

    if-eqz v0, :cond_5

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_5
    add-int/lit8 p0, p0, -0x2

    goto :goto_1

    :cond_6
    cmp-long v3, v4, v1

    if-gtz v3, :cond_8

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    if-eqz v0, :cond_7

    add-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_7
    add-int/lit8 p0, p0, -0x3

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    add-int/lit8 p0, p0, 0x4

    goto :goto_1

    :cond_9
    add-int/lit8 p0, p0, -0x4

    :goto_1
    if-eqz v0, :cond_a

    if-le p0, p2, :cond_a

    goto :goto_2

    :cond_a
    if-nez v0, :cond_b

    .line 63
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    if-le p2, p0, :cond_b

    .line 64
    iget p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    goto :goto_2

    :cond_b
    move p2, p0

    .line 67
    :goto_2
    iput p2, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
