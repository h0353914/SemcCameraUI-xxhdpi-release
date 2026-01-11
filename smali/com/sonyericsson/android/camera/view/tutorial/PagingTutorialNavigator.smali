.class public abstract Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;
.super Landroid/widget/FrameLayout;
.source "PagingTutorialNavigator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

.field protected final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected abstract doFirstPage()V
.end method

.method protected abstract doLastPage()V
.end method

.method protected abstract doMiddlePage()V
.end method

.method protected abstract doSingleContent()V
.end method

.method protected abstract getPageCount()I
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doSingleContent()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->updatePageSelected(I)V

    if-nez p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doFirstPage()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doLastPage()V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->doMiddlePage()V

    :goto_0
    return-void
.end method

.method protected abstract setPageSize(I)V
.end method

.method protected setViewController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    return-void
.end method

.method protected updateClickEventListener(Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mOnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updatePageSelected(I)V
    .locals 0

    return-void
.end method
