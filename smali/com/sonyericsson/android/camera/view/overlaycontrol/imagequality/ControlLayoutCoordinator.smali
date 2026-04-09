.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;
.super Ljava/lang/Object;
.source "ControlLayoutCoordinator.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;


# instance fields
.field private final mContainerRect:Landroid/graphics/Rect;

.field public mDialogRect:Landroid/graphics/Rect;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private final mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 30
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method

.method private coordinatePositionPhone()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 44
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 52
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700f4

    .line 51
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_1

    .line 57
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setX(F)V

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 58
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setY(F)V

    goto :goto_1

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setX(F)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 62
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setY(F)V

    .line 66
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 67
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 68
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 69
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 70
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    return-void
.end method

.method private coordinatePositionTablet()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->coordinatePositionPhone()V

    return-void
.end method


# virtual methods
.method public coordinatePosition(I)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->coordinatePositionTablet()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->coordinatePositionPhone()V

    :goto_0
    return-void
.end method

.method public coordinateSize(I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
