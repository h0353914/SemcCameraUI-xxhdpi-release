.class public Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;
.source "FeatureListContentNavigator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateClickEventActivation()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->updateClickEventListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public changeGotItButtonMessage(I)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected doFirstPage()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->updateClickEventActivation()V

    return-void

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doLastPage()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->updateClickEventActivation()V

    return-void

    .line 96
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doMiddlePage()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->updateClickEventActivation()V

    return-void

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doSingleContent()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mNext:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mGotIt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;->updateClickEventActivation()V

    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
