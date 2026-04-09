.class public Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;
.super Ljava/lang/Object;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;,
        Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;
    }
.end annotation


# static fields
.field private static final BASIC_SYSTEM_UI_FLAGS:I = 0x700

.field private static final SCREEN_ASPECT_EIGHTEEN_NINE:F = 2.0f

.field private static final SCREEN_ASPECT_NOT_DEFINED:F = -1.0f

.field private static final SCREEN_ASPECT_SIXTEEN_NINE:F = 1.7777778f

.field private static final TAG:Ljava/lang/String; = "LayoutDependencyResolver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;
    .locals 5

    .line 157
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 158
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float v1, v0, p0

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 160
    new-instance p0, Landroid/graphics/Rect;

    float-to-double v3, v0

    .line 161
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    div-float/2addr v0, p1

    float-to-double v3, v0

    .line 162
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-direct {p0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 164
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    mul-float/2addr p1, p0

    float-to-double v3, p1

    .line 165
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    float-to-double v3, p0

    .line 166
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-direct {v0, v2, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 87
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    return-object p0

    .line 89
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    return-object p0
.end method

.method public static getLeftItemCount(Landroid/content/Context;)I
    .locals 1

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarMargin(Landroid/content/Context;)I
    .locals 4

    .line 94
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getNavigationBarMargin(): Unknown navigation bar status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;
    .locals 7

    .line 180
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 181
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x7f0700f4

    const v4, 0x7f070110

    const v5, 0x3c23d70a    # 0.01f

    const/4 v6, 0x0

    if-lez v1, :cond_2

    .line 187
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v1, :cond_0

    const/high16 p2, 0x3f100000    # 0.5625f

    sub-float p2, p1, p2

    .line 188
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {p0, v0, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sub-int/2addr p2, p0

    .line 195
    new-instance p0, Landroid/graphics/Rect;

    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_0
    sub-float p0, p1, v2

    .line 201
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_1

    .line 204
    new-instance p0, Landroid/graphics/Rect;

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v6, p1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 210
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, v6, v6, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 220
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v1, :cond_3

    const p2, 0x3fe38e39

    sub-float p2, p1, p2

    .line 221
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v5

    if-gez p2, :cond_3

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {p0, v0, v4}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {p0, v0, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sub-int/2addr p2, p0

    .line 228
    new-instance p0, Landroid/graphics/Rect;

    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, v6, v6, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_3
    sub-float p0, p1, v2

    .line 234
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_4

    .line 237
    new-instance p0, Landroid/graphics/Rect;

    .line 238
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    div-int/lit8 p2, p2, 0x3

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, p1, v6, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 243
    :cond_4
    new-instance p0, Landroid/graphics/Rect;

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    .line 119
    new-instance v0, Landroid/graphics/Point;

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 124
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const-string v2, "window"

    .line 125
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 126
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 130
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 133
    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 152
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getViewFinderSize(): Unknown system bar status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :pswitch_0
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 142
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isTenInch(Landroid/content/Context;)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static requestToDimSystemUi(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 295
    :cond_0
    sget v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    .line 296
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    .line 303
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 308
    :goto_0
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestToRecoverSystemUi(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 318
    :cond_0
    sget v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    .line 319
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 325
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 330
    :goto_0
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestToRemoveSystemUi(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 273
    :cond_0
    sget v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    .line 274
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 285
    :goto_0
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 257
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 261
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 263
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;)V

    return-void
.end method

.method public static setupRotatableToast(Landroid/app/Activity;)V
    .locals 12

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 338
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    .line 340
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v3

    .line 341
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 347
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    .line 348
    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 349
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 350
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 351
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 352
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result p0

    div-int/2addr v6, p0

    goto :goto_0

    .line 354
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 355
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 356
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int v7, v0, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 357
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result p0

    div-int/2addr v6, p0

    .line 364
    :goto_0
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v4, p0, :cond_1

    .line 366
    new-instance p0, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    invoke-direct {p0, v4, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    invoke-direct {v4, v7, v8, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 378
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v1

    add-int/2addr v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 383
    new-instance v1, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    sub-int/2addr v9, v6

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v8, v9, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 390
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

    .line 395
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 402
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v1

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v1

    add-int/2addr v10, v6

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v8, v9, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    new-instance v1, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v6

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v8, v6, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 414
    :goto_1
    new-instance v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v2, v5, v0, p0, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {p0, v5, v0, v7, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v2, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V

    return-void
.end method
