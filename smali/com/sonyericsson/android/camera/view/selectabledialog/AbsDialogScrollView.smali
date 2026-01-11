.class public abstract Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;
.super Landroid/widget/FrameLayout;
.source "AbsDialogScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;
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

.field protected mIsNewFeatureBarNeeded:Z

.field protected mOrientation:I

.field protected mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

.field protected mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

.field protected mTopMarginHint:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmInterporater(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mInterporater:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 44
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mOrientation:I

    .line 53
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3eb5c28f    # 0.355f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f251eb8    # 0.645f

    const v3, 0x3d3851ec    # 0.045f

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mInterporater:Landroid/view/animation/Interpolator;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected abstract addContent(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
.end method

.method protected addContentView(Landroid/view/View;)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected calculateInitialDisplayHeight(I)I
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->dimenToPixel(I)I

    move-result p1

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollableContentLength()I

    move-result p0

    if-le p1, p0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method protected dimenToPixel(I)I
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected findItemViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 267
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

    .line 268
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAnimationFactory()Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;
    .locals 3

    .line 287
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$3;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$AnimationType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 296
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$2;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$SliderAnimation-IA;)V

    return-object v0

    .line 289
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$FadeAnimation-IA;)V

    return-object v0
.end method

.method protected getArrangeHeightAtIndex(I)I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 212
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

    .line 229
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected getContentLayout()Landroid/widget/LinearLayout;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected getInitialDisplayHeight()I
    .locals 1

    const v0, 0x7f0701b9

    .line 238
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->calculateInitialDisplayHeight(I)I

    move-result p0

    return p0
.end method

.method protected getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getCurrentStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getScrollableContentLength()I
.end method

.method protected getScrolledHeight()I
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrolledHeight()I

    move-result p0

    return p0
.end method

.method protected getTotalArrangeHeight()I
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 222
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

    .line 200
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

    .line 133
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

    .line 134
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->release()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onInitializeScroll()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "panel size is 0"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mIsExpandedWhenOpened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mArranges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->computeScrollOffset()I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getInitialDisplayHeight()I

    move-result v3

    goto :goto_0

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getInitialDisplayHeight()I

    move-result v3

    :goto_0
    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 153
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->scrollTo(II)V

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public scrollTo(II)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    if-eqz p0, :cond_1

    .line 164
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

    .line 176
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBottomMarginHint:I

    if-eq v0, p1, :cond_0

    .line 177
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBottomMarginHint:I

    :cond_0
    return-void
.end method

.method protected setScrollStatus(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setCurrentStatus(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    return-void
.end method

.method protected setTopMarginHint(I)V
    .locals 1

    .line 182
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mTopMarginHint:I

    if-eq v0, p1, :cond_0

    .line 183
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mTopMarginHint:I

    :cond_0
    return-void
.end method

.method protected setUiOrientation(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mOrientation:I

    .line 170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method protected setup(ZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;IIZZ)V
    .locals 0

    .line 86
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mIsExpandedWhenOpened:Z

    .line 87
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mIsNewFeatureBarNeeded:Z

    .line 89
    new-instance p6, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {p6, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V

    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0c0098

    invoke-static {p2, p6, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f090193

    .line 93
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    .line 94
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    if-lez p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    const p4, 0x7f08013c

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 99
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mBackground:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p4, p4, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p5, p5, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    iget-object p6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p6, p6, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    iget-object p7, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p7, p7, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    invoke-virtual {p2, p4, p5, p6, p7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const p1, 0x7f0901c6

    .line 108
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    .line 109
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setSettingMenuParams(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setOnScrollListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;)V

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    const p2, 0x7f0901c7

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    new-instance p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const p1, 0x7f0900ba

    .line 119
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollbarFadeDuration:I

    if-lez p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollbarFadeDuration:I

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setScrollBarFadeDuration(I)V

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    if-lez p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mDefaultScroller:Landroid/widget/ScrollView;

    const p2, 0x7f0900bb

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mContentsBinder:Landroid/widget/LinearLayout;

    :goto_0
    return-void
.end method

.method protected startCloseAnimation(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getAnimationFactory()Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;->close(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected startOpenAnimation(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getAnimationFactory()Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;->open(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected updateDefaultScrollPosition()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getInitialDisplayHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setSettingDefaultHeight(I)V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollableContentLength()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setChildHeight(I)V

    return-void
.end method

.method public abstract updateRotatableLayout(Landroid/view/ViewGroup;II)V
.end method
