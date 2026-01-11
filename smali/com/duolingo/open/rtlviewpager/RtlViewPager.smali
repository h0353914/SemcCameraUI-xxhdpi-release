.class public Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.super Landroidx/viewpager/widget/ViewPager;
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

.field private final mPageChangeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            "Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    return-void
.end method

.method static synthetic access$401(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$601(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method private isRtl()Z
    .locals 1

    .line 90
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
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2

    .line 198
    new-instance v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 199
    iget-object v1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public clearOnPageChangeListeners()V
    .locals 0

    .line 213
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 214
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 85
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getDelegate()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentItem()I
    .locals 2

    .line 95
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 96
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 v0, p0, -0x1

    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 219
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 223
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 229
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 231
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 135
    instance-of v0, p1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 140
    :cond_0
    check-cast p1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    .line 141
    invoke-static {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->access$100(Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    .line 142
    invoke-static {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->access$200(Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 60
    :goto_0
    iget p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    if-eq v1, p1, :cond_2

    .line 61
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    .line 66
    :cond_1
    iput v1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 129
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    iget p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mLayoutDirection:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;ILcom/duolingo/open/rtlviewpager/RtlViewPager$1;)V

    return-object v1
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;

    if-eqz p1, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;-><init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V

    move-object p1, v0

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 114
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 105
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    new-instance v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
