.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewContainerLayout"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public final mPreviewContainer:Landroid/widget/FrameLayout;

.field public final mPreviewOverlayContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1727
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1728
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    .line 1730
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 1731
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->addView(Landroid/view/View;)V

    .line 1732
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    .line 1735
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    .line 1736
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x0

    .line 1737
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1738
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1739
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1741
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    .line 1742
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1743
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1744
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->addView(Landroid/view/View;)V

    .line 1745
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1748
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1750
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    .line 1751
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1752
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    .line 1755
    iput v3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1756
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1757
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1758
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1760
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0c00b8

    const/4 v1, 0x0

    .line 1761
    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1763
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public updatePreviewContainerLayout(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 12

    .line 1768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 1769
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1770
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1773
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    .line 1774
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07011a

    .line 1773
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1775
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    .line 1776
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070139

    .line 1775
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1778
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/16 v6, 0xf

    const/16 v7, 0xe

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v4, v5, :cond_1

    .line 1780
    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v4, :cond_0

    .line 1781
    invoke-virtual {p0, v11, v2, v11, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setPadding(IIII)V

    .line 1782
    invoke-virtual {v0, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1783
    invoke-virtual {v0, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1785
    invoke-virtual {v0, v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1786
    invoke-virtual {v0, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1790
    :cond_0
    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p2, v0, :cond_3

    .line 1791
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1792
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1793
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->requestLayout()V

    goto :goto_0

    .line 1796
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v4, :cond_2

    .line 1797
    invoke-virtual {p0, v2, v11, v3, v11}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setPadding(IIII)V

    .line 1799
    invoke-virtual {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1801
    invoke-virtual {v0, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1802
    invoke-virtual {v0, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1803
    invoke-virtual {v0, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1807
    :cond_2
    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eq p2, v0, :cond_3

    .line 1808
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1809
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1810
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->requestLayout()V

    :cond_3
    :goto_0
    return-void
.end method
