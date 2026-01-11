.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;
.super Ljava/lang/Object;
.source "SimpleIqControlView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;,
        Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;
    }
.end annotation


# static fields
.field private static final SEEK_BAR_BOKEH_STRENGTH:I = 0x7f0901bd

.field private static final SEEK_BAR_BRIGHTNESS:I = 0x7f0901be

.field private static final SEEK_BAR_COLORING:I = 0x7f0901b6

.field private static final SEEK_BAR_MAXIMUM_VALUE:I = 0x64

.field private static final SEEK_BAR_MINIMUM_VALUE:I = 0x0

.field private static final SEMI_AUTO_EXPAND_BUTTON:I = 0x7f0901b8

.field private static final SEMI_AUTO_RESET_BUTTON:I = 0x7f0901ba

.field public static final TAG:Ljava/lang/String; = "SimpleIqControlView"


# instance fields
.field private final mAvailability:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

.field private mBokehStrengthOnStartTracking:I

.field private mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

.field private mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

.field private mExpand:Landroid/widget/ImageView;

.field private mIndicatorView:Landroid/view/View;

.field private mIsExpanded:Z

.field private mIsTracking:Z

.field private mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

.field private mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

.field private mReset:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsTracking:Z

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsExpanded:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->init(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V

    return-void
.end method

.method private doEnable(Z)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 280
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsExpanded:Z

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->show(ZZ)V

    .line 284
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;->start()V

    .line 286
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz p0, :cond_0

    .line 287
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onSemiAutoEnabled()V

    :cond_0
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .locals 7

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901b7

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 90
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 95
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x5

    .line 97
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    sget-object v5, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v5, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const v5, 0x7f07011a

    .line 113
    invoke-static {v0, p2, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    .line 115
    :cond_0
    sget-object v5, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v5, :cond_1

    mul-int/lit8 p2, v3, 0x4

    .line 116
    div-int/lit8 p2, p2, 0x9

    goto :goto_0

    :cond_1
    move p2, v2

    .line 119
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-int/2addr p1, p2

    mul-int/lit8 p2, v3, 0x4

    .line 121
    div-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    int-to-float p1, p1

    mul-float/2addr p1, v5

    float-to-int p1, p1

    .line 122
    invoke-virtual {v4, v2, v2, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ae

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-le v3, p1, :cond_2

    .line 128
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    iget p1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    .line 136
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const p2, 0x7f0901b9

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    .line 142
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    new-instance p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    .line 145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f0901be

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    .line 146
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f0901b6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f0901bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    .line 148
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f0901ba

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    .line 149
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f0901b8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    .line 151
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->hide()V

    .line 152
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->hide()V

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->hide()V

    .line 155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p2, 0x7f08039d

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setSeekBarResource(I)V

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p2, 0x7f08039f

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setSeekBarResource(I)V

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p2, 0x7f08039b

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setSeekBarResource(I)V

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p2, 0x7f0f0446

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setTextForAccessibility(I)V

    .line 165
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p2, 0x7f0f0447

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setTextForAccessibility(I)V

    .line 166
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p2, 0x7f0f00d0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setTextForAccessibility(I)V

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setMinimum(I)V

    .line 169
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setMaximum(I)V

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setMinimum(I)V

    .line 171
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setMaximum(I)V

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setMinimum(I)V

    .line 173
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setMaximum(I)V

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setAscending(Z)V

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setAscending(Z)V

    .line 177
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setAscending(Z)V

    .line 179
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setDefaultPosition()V

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setProgress(I)V

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setOnSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;)V

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setOnSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;)V

    .line 184
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setOnSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$OnSeekBarChangeListener;)V

    return-void
.end method

.method private isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDefaultPosition()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->moveToCenterProgress()V

    .line 189
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->moveToCenterProgress()V

    return-void
.end method

.method private show(ZZ)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->show(Z)V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsTracking:Z

    if-nez v0, :cond_4

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->show(Z)V

    if-eqz p2, :cond_2

    .line 408
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->show(Z)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 410
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 414
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->hide()V

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;->stop(Z)V

    .line 332
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz p0, :cond_1

    .line 333
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onSemiAutoDisabled()V

    :cond_1
    return-void
.end method

.method public disable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->hide()V

    return v1

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->disable()V

    return v0
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public enable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;Z)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    if-ne p1, v0, :cond_0

    .line 294
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsExpanded:Z

    .line 296
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->doEnable(Z)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    .line 304
    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0352

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    sget-object p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 307
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    .line 308
    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f01cc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_1
    sget-object p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 312
    sget-object p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    .line 314
    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0105

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getEnabledTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 358
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 4

    .line 375
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->hide()V

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->hide()V

    .line 378
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setDefaultPosition()V

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->hide()V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mAvailability:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public isEnabled(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isAvailable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901b8

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901ba

    if-ne p1, v0, :cond_0

    .line 460
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz p1, :cond_2

    .line 461
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onReset()V

    goto :goto_0

    .line 477
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 468
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->show(Z)V

    .line 470
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsExpanded:Z

    .line 482
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;->start()V

    return-void
.end method

.method public onProgressChanged(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;IZ)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 219
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 201
    :sswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz p0, :cond_0

    .line 202
    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onBrightnessChanged(I)V

    goto :goto_0

    .line 213
    :sswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz p0, :cond_0

    .line 214
    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onBokehStrengthChanged(I)V

    goto :goto_0

    .line 207
    :sswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz p0, :cond_0

    .line 208
    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onAmberBlueColorChanged(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901b6 -> :sswitch_2
        0x7f0901bd -> :sswitch_1
        0x7f0901be -> :sswitch_0
    .end sparse-switch
.end method

.method public onStartTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;I)V
    .locals 2

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsTracking:Z

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;->stop(Z)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getId()I

    move-result p1

    const v0, 0x7f0901bd

    if-ne p1, v0, :cond_0

    .line 233
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrengthOnStartTracking:I

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onSemiAutoControlStarted()V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsTracking:Z

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;->start()V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->getId()I

    move-result p1

    const v0, 0x7f0901bd

    if-ne p1, v0, :cond_0

    .line 249
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrengthOnStartTracking:I

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setChangedBokehStrength(II)V

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;->onSemiAutoControlStopped()V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 493
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

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

    .line 495
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 498
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    goto :goto_1

    .line 502
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    return p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setOnSimpleIqChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIsExpanded:Z

    return-void
.end method

.method public setGray(Z)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mOpacityReductionTask:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OpacityReductionTask;->setGray(Z)V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setTouchable(Z)V

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setTouchable(Z)V

    .line 427
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setTouchable(Z)V

    return-void
.end method

.method public setOnSimpleIqChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 437
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p1, 0x7f08039b

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setSeekBarResource(I)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    const p1, 0x7f08039c

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setSeekBarResource(I)V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mExpand:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->mReset:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
