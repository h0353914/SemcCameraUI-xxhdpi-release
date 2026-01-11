.class public Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;
.super Ljava/lang/Object;
.source "PinchZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final MAX_ZOOM_STEP_RANGE_FOR_SCALE:I

.field private static final PINCH_ZOOM_COEFFICIENT:F = 0.85f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    .line 20
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;->MAX_ZOOM_STEP_RANGE_FOR_SCALE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .locals 2

    const/4 p0, 0x0

    .line 30
    aget-object p0, p2, p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 34
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 36
    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 38
    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;->MAX_ZOOM_STEP_RANGE_FOR_SCALE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    iget v1, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr p0, v0

    int-to-float p2, p2

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p2, v0

    div-float/2addr p0, p2

    add-float/2addr v1, p0

    .line 42
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    .line 43
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMinIndex:I

    :goto_0
    int-to-float v1, p0

    goto :goto_1

    .line 45
    :cond_0
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_1

    .line 47
    iget p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mMaxIndex:I

    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    return-object p1
.end method
