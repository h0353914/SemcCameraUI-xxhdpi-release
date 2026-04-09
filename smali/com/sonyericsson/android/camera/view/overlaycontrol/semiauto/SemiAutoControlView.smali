.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;
.super Ljava/lang/Object;
.source "SemiAutoControlView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;,
        Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;
    }
.end annotation


# static fields
.field private static final SEEK_BAR_BRIGHTNESS:I = 0x7f090151

.field private static final SEEK_BAR_COLORING:I = 0x7f090152

.field private static final SEEK_BAR_MAXIMUM_VALUE:I = 0x64

.field private static final SEEK_BAR_MINIMUM_VALUE:I = 0x0

.field private static final SEMI_AUTO_EXPAND_BUTTON:I = 0x7f09014c

.field private static final SEMI_AUTO_RESET_BUTTON:I = 0x7f09014e

.field public static final TAG:Ljava/lang/String; = "SemiAutoControlView"


# instance fields
.field private mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

.field private mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

.field private mExpand:Landroid/widget/ImageView;

.field private mIndicatorView:Landroid/view/View;

.field private mIsExpanded:Z

.field private mIsTracking:Z

.field private mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

.field private mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

.field private mReset:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsTracking:Z

    .line 60
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsExpanded:Z

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->init(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    return-void
.end method

.method private hide()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->hide()V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->hide()V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private init(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 7

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09014b

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 73
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 78
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x5

    .line 80
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    sget-object v5, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v5, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const v5, 0x7f0700f4

    .line 92
    invoke-static {v0, p2, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    mul-int/lit8 v5, v3, 0x4

    .line 96
    div-int/lit8 v5, v5, 0x3

    sub-int/2addr p1, v5

    sub-int/2addr p1, p2

    .line 97
    invoke-virtual {v4, v2, v2, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070180

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-le v3, p1, :cond_1

    .line 103
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    iget p1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const p2, 0x7f09014d

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    .line 117
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    new-instance p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f090151

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f090152

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f09014e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f09014c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mExpand:Landroid/widget/ImageView;

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->hide()V

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->hide()V

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    const p2, 0x7f080330

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setSeekBarResource(I)V

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    const p2, 0x7f080332

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setSeekBarResource(I)V

    .line 134
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    const p2, 0x7f0f02bd

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setTextForAccessibility(I)V

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    const p2, 0x7f0f02be

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setTextForAccessibility(I)V

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setMinimum(I)V

    .line 138
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setMaximum(I)V

    .line 139
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setMinimum(I)V

    .line 140
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setMaximum(I)V

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setDefaultPosition()V

    .line 144
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setAscending(Z)V

    .line 145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setAscending(Z)V

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setOnSemiAutoSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;)V

    .line 148
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setOnSemiAutoSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;)V

    return-void
.end method

.method private setDefaultPosition()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->moveToCenterProgress()V

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->moveToCenterProgress()V

    return-void
.end method

.method private show(ZZ)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsTracking:Z

    if-nez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->show(Z)V

    if-eqz p2, :cond_1

    .line 273
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->show(Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 239
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->hide()V

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setDefaultPosition()V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->stop(Z)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;->onSemiAutoDisabled()V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 223
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsExpanded:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->show(ZZ)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->start()V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;->onSemiAutoEnabled()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09014c

    if-eq p1, v0, :cond_1

    const v0, 0x7f09014e

    if-eq p1, v0, :cond_0

    .line 324
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;->onSemiAutoReset()V

    goto :goto_0

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->show(Z)V

    .line 317
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mExpand:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsExpanded:Z

    .line 329
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->start()V

    return-void
.end method

.method public onProgressChanged(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;IZ)V
    .locals 0

    .line 162
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 176
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 170
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    if-eqz p1, :cond_0

    .line 171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;->onAmberBlueColorChanged(I)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    if-eqz p1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;->onBrightnessChanged(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090151
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;I)V
    .locals 0

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsTracking:Z

    .line 186
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->stop(Z)V

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    if-eqz p1, :cond_0

    .line 189
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;->onSemiAutoControlStarted()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;I)V
    .locals 0

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsTracking:Z

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->start()V

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    if-eqz p1, :cond_0

    .line 202
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;->onSemiAutoControlStopped()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 340
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 342
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 345
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    goto :goto_1

    .line 349
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    return p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setOnSemiAutoChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIsExpanded:Z

    return-void
.end method

.method public setOnSemiAutoChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mReset:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
