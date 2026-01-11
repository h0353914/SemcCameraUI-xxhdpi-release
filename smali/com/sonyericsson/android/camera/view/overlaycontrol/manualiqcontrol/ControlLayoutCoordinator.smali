.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;
.super Ljava/lang/Object;
.source "ControlLayoutCoordinator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/LayoutCoordinator;


# instance fields
.field private final mContainerRect:Landroid/graphics/Rect;

.field public mDialogRect:Landroid/graphics/Rect;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private final mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 30
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method

.method private coordinatePositionPhone()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 44
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 46
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07011a

    .line 45
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x4

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    .line 48
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    .line 54
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v5, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v4, v5, :cond_0

    int-to-float v0, v1

    add-float/2addr v2, v0

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sub-float v3, v2, v0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v5, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v4, v5, :cond_2

    .line 57
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 58
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    mul-int/lit8 v1, v0, 0x5

    int-to-float v1, v1

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    mul-int/lit8 v0, v0, 0x15

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    goto :goto_1

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 80
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700e7

    .line 79
    invoke-static {v0, v3, v4}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_0

    .line 86
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setX(F)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 89
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setY(F)V

    goto :goto_2

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setX(F)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 94
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 93
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setY(F)V

    .line 97
    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 98
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 99
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 100
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 101
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    return-void
.end method

.method private coordinatePositionTablet()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->coordinatePositionPhone()V

    return-void
.end method


# virtual methods
.method public coordinatePosition(I)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->coordinatePositionTablet()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->coordinatePositionPhone()V

    :goto_0
    return-void
.end method

.method public coordinateSize(I)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
