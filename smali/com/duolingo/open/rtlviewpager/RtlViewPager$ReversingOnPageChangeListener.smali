.class Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingOnPageChangeListener"
.end annotation


# instance fields
.field private final mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field final synthetic this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getWidth()I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$401(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 238
    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v2, p3

    :goto_0
    if-ge p1, p2, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 241
    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    sub-int/2addr v2, p3

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    neg-int p3, v2

    int-to-float p2, p3

    .line 245
    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    .line 247
    :cond_1
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$601(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
