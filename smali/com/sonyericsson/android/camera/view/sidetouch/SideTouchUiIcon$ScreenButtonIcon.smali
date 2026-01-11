.class public abstract Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ScreenButtonIcon"
.end annotation


# instance fields
.field private final mListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

.field protected mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

.field protected final mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;)V
    .locals 0

    .line 603
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;-><init>(Landroid/content/Context;)V

    .line 604
    iput p2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOrientation:I

    .line 605
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a9

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0901b2

    .line 614
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    .line 616
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->setupButtons()V

    .line 617
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->updateIconSize()V

    return-void
.end method

.method protected getIconView()Landroid/view/View;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    return-object p0
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    return-void
.end method

.method protected setupButtonMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    .line 639
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->create(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p0

    .line 637
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method protected setupButtonOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    .line 647
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->create(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p0

    .line 645
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method protected setupButtonOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    .line 655
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->create(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p0

    .line 653
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method protected abstract setupButtons()V
.end method

.method public show()V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->show()V

    return-void
.end method

.method protected updateIconSize()V
    .locals 6

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    .line 661
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 662
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    move v3, v2

    .line 665
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 666
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 667
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 669
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-lez v3, :cond_0

    const v5, 0x7f070208

    .line 672
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 673
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    .line 675
    :cond_0
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    :cond_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    return-void
.end method
