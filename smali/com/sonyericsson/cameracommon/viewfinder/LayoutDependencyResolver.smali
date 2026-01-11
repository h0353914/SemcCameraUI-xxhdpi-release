.class public Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;
.super Ljava/lang/Object;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LayoutDependencyResolver"

.field private static VIEWFINDER_ASPECT_RATIO:F = 1.7777778f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float v1, v0, p0

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 113
    new-instance p0, Landroid/graphics/Rect;

    float-to-double v3, v0

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    div-float/2addr v0, p1

    float-to-double v3, v0

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-direct {p0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 117
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    mul-float/2addr p1, p0

    float-to-double v3, p1

    .line 118
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    float-to-double v3, p0

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-direct {v0, v2, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    sget-object p0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    return-object p0

    .line 54
    :cond_0
    sget-object p0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    return-object p0
.end method

.method public static getLeftItemCount(Landroid/content/Context;)I
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;
    .locals 3

    .line 132
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 133
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getSystemBarMargin(Landroid/content/Context;)I
    .locals 4

    .line 59
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070138

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getSystemBarMargin(): Unknown system bar status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 82
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 83
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    .line 102
    sget p0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->VIEWFINDER_ASPECT_RATIO:F

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getViewFinderSize(): Unknown system bar status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    sget p0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->VIEWFINDER_ASPECT_RATIO:F

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 96
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sget v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->VIEWFINDER_ASPECT_RATIO:F

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isTenInch(Landroid/content/Context;)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
