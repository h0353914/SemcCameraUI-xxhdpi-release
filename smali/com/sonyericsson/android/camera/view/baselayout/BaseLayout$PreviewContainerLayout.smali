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

    .line 1518
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1519
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    .line 1521
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 1522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->addView(Landroid/view/View;)V

    .line 1523
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    .line 1526
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    .line 1527
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x0

    .line 1528
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1529
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1530
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1532
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 1533
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1534
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1535
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->addView(Landroid/view/View;)V

    .line 1536
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1539
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    .line 1542
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1543
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 1546
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1547
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1548
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1549
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0c00a2

    const/4 v1, 0x0

    .line 1552
    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1554
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public updatePreviewContainerLayout(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 12

    .line 1559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 1560
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1561
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1564
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    .line 1565
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700f4

    .line 1564
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1566
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mContext:Landroid/content/Context;

    .line 1567
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070110

    .line 1566
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1569
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/16 v6, 0xe

    const/16 v7, 0xf

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v4, v5, :cond_1

    .line 1571
    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v4, :cond_0

    .line 1572
    invoke-virtual {p0, v11, v2, v11, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setPadding(IIII)V

    .line 1574
    invoke-virtual {v0, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1575
    invoke-virtual {v0, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1577
    invoke-virtual {v0, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1578
    invoke-virtual {v0, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1582
    :cond_0
    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p2, v0, :cond_3

    .line 1583
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1584
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1585
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->requestLayout()V

    goto :goto_0

    .line 1588
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v4, :cond_2

    .line 1589
    invoke-virtual {p0, v2, v11, v3, v11}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setPadding(IIII)V

    .line 1591
    invoke-virtual {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1593
    invoke-virtual {v0, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1594
    invoke-virtual {v0, v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1595
    invoke-virtual {v0, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1599
    :cond_2
    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eq p2, v0, :cond_3

    .line 1600
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1601
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1602
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->requestLayout()V

    :cond_3
    :goto_0
    return-void
.end method
