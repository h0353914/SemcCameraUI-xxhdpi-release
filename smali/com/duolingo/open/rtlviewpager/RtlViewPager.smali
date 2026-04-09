.class public Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;,
        Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;,
        Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;
    }
.end annotation


# instance fields
.field private mLayoutDirection:I

.field private mPageChangeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            "Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$401(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 0

    .line 44
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$601(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 0

    .line 44
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method private isRtl()Z
    .locals 1

    .line 89
    iget p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2

    .line 187
    new-instance v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 188
    iget-object v1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public clearOnPageChangeListeners()V
    .locals 0

    .line 202
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 203
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 0

    .line 84
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getDelegate()Landroid/support/v4/view/PagerAdapter;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentItem()I
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 95
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 v0, p0, -0x1

    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 208
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 211
    invoke-virtual {p0, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 212
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 213
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 218
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 220
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 170
    instance-of v0, p1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 175
    :cond_0
    check-cast p1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    .line 176
    invoke-static {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->access$200(Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    .line 177
    invoke-static {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->access$300(Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 59
    :goto_0
    iget p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    if-eq v1, p1, :cond_2

    .line 60
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    .line 65
    :cond_1
    iput v1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 68
    invoke-virtual {p0, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 164
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    iget p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;ILcom/duolingo/open/rtlviewpager/RtlViewPager$1;)V

    return-object v1
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;

    if-eqz p1, :cond_0

    .line 196
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;-><init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroid/support/v4/view/PagerAdapter;)V

    move-object p1, v0

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 113
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 182
    new-instance v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
