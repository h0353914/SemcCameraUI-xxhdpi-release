.class public Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;
.super Ljava/lang/Object;
.source "SideTouchUtils.java"


# static fields
.field public static final SIDE_BOTTOM:I = 0x8

.field public static final SIDE_LEFT:I = 0x1

.field public static final SIDE_RIGHT:I = 0x2

.field public static final SIDE_TOP:I = 0x4

.field public static final SIDE_UNKNOWN:I = 0x0

.field public static final SOURCE_SIDETOUCH:I = 0x20000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clip(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static getLocalPos(Landroid/view/View;FFZ)Landroid/graphics/PointF;
    .locals 1

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 77
    invoke-static {v0, p0, p1, p2, p3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLocalPos(Landroid/graphics/PointF;Landroid/view/View;FFZ)V

    return-object v0
.end method

.method public static getLocalPos(Landroid/graphics/PointF;Landroid/view/View;FFZ)V
    .locals 2

    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [I

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 93
    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x1

    .line 94
    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p3, v0

    if-eqz p4, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-static {p2, v0, p4}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->clip(FFF)F

    move-result p2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p3, v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->clip(FFF)F

    move-result p3

    .line 101
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static getLogicalScreenSide(Landroid/view/MotionEvent;)I
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 30
    invoke-static {p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLogicalScreenSide(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0
.end method

.method public static getLogicalScreenSide(Landroid/view/MotionEvent;I)I
    .locals 5

    .line 34
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    const/high16 p1, 0x20000000

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2, p1}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    const/4 v4, 0x1

    .line 43
    invoke-virtual {v0, v4, p1}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    if-eqz v3, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    .line 51
    :goto_0
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v1

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_4

    or-int/lit8 v0, v0, 0x8

    .line 62
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    if-le p0, v4, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v2
.end method
