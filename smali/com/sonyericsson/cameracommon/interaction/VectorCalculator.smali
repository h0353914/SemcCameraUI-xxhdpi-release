.class public Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;
.super Ljava/lang/Object;
.source "VectorCalculator.java"


# static fields
.field private static final PARALLEL_ANGLE_FORWARD_DIRECTION:F = 0.0f

.field private static final PARALLEL_ANGLE_INVERSE_DIRECTION:F = 3.1415927f

.field private static final PARALLEL_ANGLE_TOLERANCE:F = 1.0471976f

.field private static final RIGHT_ANGLE:F = 1.5707964f

.field private static final RIGHT_ANGLE_TOLERANCE:F = 1.0471976f

.field public static final TAG:Ljava/lang/String; = "VectorCalculator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    .line 28
    invoke-virtual {p0}, Landroid/graphics/PointF;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 29
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/PointF;->length()F

    move-result p0

    div-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result p0

    div-float/2addr v0, p0

    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p1, v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p0, v1, v0

    if-gez p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    float-to-double p0, p0

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_2
    return v1
.end method

.method private static isNearlyEquals(FFF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 74
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 2

    .line 58
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const p1, 0x3f860a92

    const v0, 0x40490fdb    # (float)Math.PI

    .line 60
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isNearlyEquals(FFF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isNearlyEquals(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const p1, 0x3f060a92

    cmpg-float p1, p1, p0

    if-gez p1, :cond_0

    const p1, 0x40278d36

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
