.class public Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;
.super Ljava/lang/Object;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;,
        Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    }
.end annotation


# static fields
.field private static final SCREEN_ASPECT_EIGHTEEN_NINE:F = 2.0f

.field private static final SCREEN_ASPECT_NOT_DEFINED:F = -1.0f

.field private static final SCREEN_ASPECT_SIXTEEN_NINE:F = 1.7777778f

.field private static final SCREEN_ASPECT_TWENTYONE_NINE:F = 2.3333333f

.field private static final TAG:Ljava/lang/String; = "LayoutDependencyResolver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 145
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

    .line 147
    new-instance p0, Landroid/graphics/Rect;

    float-to-double v3, v0

    .line 148
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    div-float/2addr v0, p1

    float-to-double v3, v0

    .line 149
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-direct {p0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    mul-float/2addr p1, p0

    float-to-double v3, p1

    .line 152
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    float-to-double v3, p0

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-direct {v0, v2, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 80
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    return-object p0

    .line 82
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    return-object p0
.end method

.method public static getLeftItemCount(Landroid/content/Context;)I
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarMargin(Landroid/content/Context;)I
    .locals 4

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070138

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 101
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getNavigationBarMargin(): Unknown navigation bar status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;
    .locals 7

    .line 167
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 168
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v1, p1, v1

    const v2, 0x7f07011a

    const v3, 0x7f070139

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3c23d70a    # 0.01f

    const/4 v6, 0x0

    if-lez v1, :cond_2

    .line 174
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v1, :cond_0

    const/high16 p2, 0x3f100000    # 0.5625f

    sub-float p2, p1, p2

    .line 175
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {p0, v0, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sub-int/2addr p2, p0

    .line 182
    new-instance p0, Landroid/graphics/Rect;

    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_0
    sub-float p0, p1, v4

    .line 188
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_1

    .line 191
    new-instance p0, Landroid/graphics/Rect;

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v6, p1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 197
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, v6, v6, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 207
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v1, :cond_3

    const p2, 0x3fe38e39

    sub-float p2, p1, p2

    .line 208
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v5

    if-gez p2, :cond_3

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {p0, v0, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {p0, v0, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sub-int/2addr p2, p0

    .line 215
    new-instance p0, Landroid/graphics/Rect;

    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, v6, v6, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_3
    sub-float p0, p1, v4

    .line 221
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_4

    .line 224
    new-instance p0, Landroid/graphics/Rect;

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    div-int/lit8 p2, p2, 0x3

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, p1, v6, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 230
    :cond_4
    new-instance p0, Landroid/graphics/Rect;

    .line 233
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4

    .line 111
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 112
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 119
    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 p0, 0x2

    if-ne v2, p0, :cond_0

    .line 136
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getViewFinderSize(): Unknown system bar status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isTenInch(Landroid/content/Context;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 244
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 248
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;)V

    return-void
.end method

.method public static setupRotatableToast(Landroid/app/Activity;)V
    .locals 12

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 259
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    .line 261
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v3

    .line 262
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 268
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    .line 269
    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 270
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 271
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 273
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result p0

    div-int/2addr v6, p0

    goto :goto_0

    .line 275
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 276
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 277
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int v7, v0, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 278
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result p0

    div-int/2addr v6, p0

    .line 285
    :goto_0
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v4, p0, :cond_1

    .line 287
    new-instance p0, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    invoke-direct {p0, v4, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    invoke-direct {v4, v7, v8, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 299
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v1

    add-int/2addr v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    new-instance v1, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    sub-int/2addr v9, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    invoke-direct {v1, v8, v9, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 311
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v2

    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v6

    invoke-direct {p0, v4, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 316
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v1

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v1

    add-int/2addr v10, v6

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v8, v9, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    new-instance v1, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v6

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v8, v6, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 335
    :goto_1
    new-instance v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v2, v5, v0, p0, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {p0, v5, v0, v7, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v2, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V

    return-void
.end method
