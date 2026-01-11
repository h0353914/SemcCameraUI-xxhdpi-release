.class public Lcom/sonyericsson/cameracommon/utility/ViewUtility;
.super Ljava/lang/Object;
.source "ViewUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:F = 0.001f

.field public static final TAG:Ljava/lang/String; = "ViewUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenter(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    .line 177
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4

    .line 189
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 190
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 194
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 196
    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v2

    .line 197
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v0

    .line 198
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    .line 201
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getEstimatedRealScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 9

    .line 73
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 74
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 75
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 81
    iget p0, v0, Landroid/graphics/Point;->y:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ge p0, v1, :cond_0

    .line 82
    iget p0, v0, Landroid/graphics/Point;->x:I

    .line 83
    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 85
    :cond_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    .line 86
    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    add-int v1, p0, v0

    .line 92
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->values()[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 93
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->getWidth()I

    move-result v7

    sub-int v7, p0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 94
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    if-ge v7, v1, :cond_1

    move-object v4, v6

    move v1, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->getAsRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 103
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "getEstimatedRealScreenRect():[Not supported screen size.]"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPixel(Landroid/content/Context;I)I
    .locals 0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getRealSize(Landroid/content/Context;)Landroid/util/Size;
    .locals 2

    .line 181
    const-string/jumbo v0, "window"

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 183
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 185
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [I

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    aget v0, v0, v3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static isSimilarAspect(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 155
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSimilarAspect(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    if-lt p1, v1, :cond_1

    if-lt p2, v1, :cond_1

    if-ge p3, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    sub-float/2addr p0, p1

    .line 143
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSimilarAspectRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p0, v1, p1}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->isSimilarAspect(IIII)Z

    move-result p0

    return p0
.end method
