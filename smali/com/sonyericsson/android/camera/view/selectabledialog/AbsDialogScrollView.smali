.class public abstract Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;
.super Landroid/widget/FrameLayout;
.source "AbsDialogScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;
    }
.end annotation


# instance fields
.field protected final mArranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackground:Landroid/widget/FrameLayout;

.field protected mBottomMarginHint:I

.field protected mContentsBinder:Landroid/widget/LinearLayout;

.field private mDefaultScroller:Landroid/widget/ScrollView;

.field private final mInterporater:Landroid/view/animation/Interpolator;

.field protected mIsExpandedWhenOpened:Z

.field protected mOrientation:I

.field protected mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

.field protected mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

.field protected mTopMarginHint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mOrientation:I

    .line 51
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f251eb8    # 0.645f

    const v1, 0x3d3851ec    # 0.045f

    const v2, 0x3eb5c28f    # 0.355f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mInterporater:Landroid/view/animation/Interpolator;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mInterporater:Landroid/view/animation/Interpolator;

    return-object p0
.end method


# virtual methods
.method protected abstract addContent(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
.end method

.method protected addContentView(Landroid/view/View;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected calculateInitialDisplayHeight(I)I
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->dimenToPixel(I)I

    move-result p1

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollableContentLength()I

    move-result p0

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method protected dimenToPixel(I)I
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected findItemViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    .line 264
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAnimationFactory()Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;
    .locals 2

    .line 283
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$3;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$AnimationType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 292
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$2;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    return-object v0

    .line 288
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;)V

    return-object v0

    .line 285
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getArrangeHeightAtIndex(I)I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->computeHeight()I

    move-result p0

    return p0
.end method

.method protected getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected getContentLayout()Landroid/widget/LinearLayout;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected getInitialDisplayHeight()I
    .locals 1

    const v0, 0x7f07018d

    .line 234
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->calculateInitialDisplayHeight(I)I

    move-result p0

    return p0
.end method

.method protected getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getCurrentStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getScrollableContentLength()I
.end method

.method protected getScrolledHeight()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrolledHeight()I

    move-result p0

    return p0
.end method

.method protected getTotalArrangeHeight()I
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->computeHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected isPortrait()Z
    .locals 1

    .line 196
    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    .line 130
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->release()V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onInitializeScroll()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "panel size is 0"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mIsExpandedWhenOpened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->computeScrollOffset()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getInitialDisplayHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getInitialDisplayHeight()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 149
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->scrollTo(II)V

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public scrollTo(II)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public selectTagItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected setBottomMarginHint(I)V
    .locals 1

    .line 172
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBottomMarginHint:I

    if-eq v0, p1, :cond_0

    .line 173
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBottomMarginHint:I

    :cond_0
    return-void
.end method

.method protected setScrollStatus(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setCurrentStatus(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    return-void
.end method

.method protected setTopMarginHint(I)V
    .locals 1

    .line 178
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mTopMarginHint:I

    if-eq v0, p1, :cond_0

    .line 179
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mTopMarginHint:I

    :cond_0
    return-void
.end method

.method protected setUiOrientation(I)V
    .locals 1

    .line 165
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mOrientation:I

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method protected setup(ZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;IIZ)V
    .locals 1

    .line 83
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mIsExpandedWhenOpened:Z

    .line 85
    new-instance p6, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {p6, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V

    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0c0082

    invoke-static {p2, p6, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f09013d

    .line 89
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    .line 90
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    if-lez p2, :cond_0

    .line 94
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    const p4, 0x7f08012c

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 95
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p4, p4, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p5, p5, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    iget-object p6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p6, p6, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    invoke-virtual {p2, p4, p5, p6, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const p1, 0x7f09016b

    .line 104
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setSettingMenuParams(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V

    .line 106
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setOnScrollListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;)V

    .line 107
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    const p2, 0x7f09016c

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    new-instance p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const p1, 0x7f09007e

    .line 115
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollbarFadeDuration:I

    if-lez p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollbarFadeDuration:I

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setScrollBarFadeDuration(I)V

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    if-lez p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    const p2, 0x7f09007f

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    :goto_0
    return-void
.end method

.method protected startCloseAnimation(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getAnimationFactory()Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;->close(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected startOpenAnimation(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getAnimationFactory()Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;->open(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected updateDefaultScrollPosition()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getInitialDisplayHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setSettingDefaultHeight(I)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollableContentLength()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setChildHeight(I)V

    return-void
.end method

.method public abstract updateRotatableLayout(Landroid/view/ViewGroup;II)V
.end method
