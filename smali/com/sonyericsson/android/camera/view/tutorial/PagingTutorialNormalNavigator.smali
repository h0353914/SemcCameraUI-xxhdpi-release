.class public Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;
.source "PagingTutorialNormalNavigator.java"


# instance fields
.field private mGotIt:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNext:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPageIcons:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPrevIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSkip:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateClickEventActivation()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected doFirstPage()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 143
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doLastPage()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 189
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doMiddlePage()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 166
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doSingleContent()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 123
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getPageCount()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 94
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f0900eb

    .line 214
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    const v0, 0x7f0900e8

    .line 215
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    const v0, 0x7f0900e7

    .line 216
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    const v0, 0x7f0900ea

    .line 217
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900e9

    .line 219
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    .line 221
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->onFinishInflate()V

    return-void
.end method

.method protected setPageSize(I)V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 68
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "called before inflation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 72
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f080355

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setRotationY(F)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    return-void
.end method

.method protected updatePageSelected(I)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 103
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "called before inflation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
