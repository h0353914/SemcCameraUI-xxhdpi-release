.class public Lcom/sonyericsson/android/camera/view/angle/SideTouchZoomStepCalculator;
.super Ljava/lang/Object;
.source "SideTouchZoomStepCalculator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;


# static fields
.field private static final ZOOM_STEP_THRESHOLD_FOR_SIDE_TOUCH_1_DISTANCE:I = 0x64

.field private static final ZOOM_STEP_THRESHOLD_FOR_SIDE_TOUCH_2_DISTANCE:I = 0xc8

.field private static final ZOOM_STEP_THRESHOLD_FOR_SIDE_TOUCH_3_DISTANCE:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIncrementDirection(I)I
    .locals 0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getIncrementLength(I)I
    .locals 2

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 40
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v1, 0xc8

    if-gt v0, p0, :cond_1

    .line 41
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 43
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt v1, p0, :cond_2

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method


# virtual methods
.method public varargs calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;
    .locals 2

    const/4 v0, 0x0

    .line 29
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 30
    iget v0, p1, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->mIndex:I

    .line 31
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/angle/SideTouchZoomStepCalculator;->getIncrementDirection(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/angle/SideTouchZoomStepCalculator;->getIncrementLength(I)I

    move-result p0

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    .line 30
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->setIndex(I)V

    return-object p1
.end method
