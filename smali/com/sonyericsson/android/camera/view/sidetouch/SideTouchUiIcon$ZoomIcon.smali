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

.field private final mZoomBarUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;

.field private mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 517
    iput p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mOrientation:I

    .line 521
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomBarUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;

    return-void
.end method

.method static synthetic access$601(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;Landroid/view/ViewGroup;)V
    .locals 0

    .line 513
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->detach(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a6

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0901bd

    .line 527
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomBarLayout:Landroid/widget/FrameLayout;

    .line 528
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomBarLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0901bc

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    .line 529
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomBarUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;->bindZoomBar(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)V

    return-void
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon$1;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;)V

    .line 546
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->hideDelayed()V

    return-void
.end method

.method protected getIconView()Landroid/view/View;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoomBarLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 561
    iget v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mOrientation:I

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 563
    iput p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mOrientation:I

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->show()V

    return-void
.end method
