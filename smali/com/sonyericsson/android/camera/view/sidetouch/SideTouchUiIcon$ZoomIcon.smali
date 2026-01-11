.class public final Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ZoomIcon"
.end annotation


# instance fields
.field private mOrientation:I

.field private mZoomBarLayout:Landroid/widget/FrameLayout;

.field private final mZoomUiUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

.field private mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 521
    iput p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mOrientation:I

    .line 525
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomUiUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    return-void
.end method

.method static synthetic access$001(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;Landroid/view/ViewGroup;)V
    .locals 0

    .line 517
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->detach(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00bc

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090247

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomBarLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090246

    .line 532
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    .line 533
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomUiUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->bindZoomBar(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V

    return-void
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    .line 571
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideDelayed()V

    return-void
.end method

.method protected getIconView()Landroid/view/View;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomBarLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 586
    iget v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mOrientation:I

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setSensorOrientation(I)V

    .line 588
    iput p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mOrientation:I

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->show()V

    return-void
.end method
