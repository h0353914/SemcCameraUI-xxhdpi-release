.class public Lcom/sonyericsson/android/camera/view/ApplicationNavigator;
.super Landroid/widget/LinearLayout;
.source "ApplicationNavigator.java"


# static fields
.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field public static final MODE_INDEX_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ApplicationNavigator"

.field private static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private mCaptureButtonAreaHeight:I

.field private mCurrentModeIndicatorView:Landroid/widget/ImageView;

.field private mDisplayHeight:I

.field private mIconSize:I

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGray:Z

.field private mIsModeChanging:Z

.field private mIsTouchable:Z

.field private mModeIconsView:Landroid/widget/FrameLayout;

.field private mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

.field private mModeSwitchImageView:Landroid/widget/ImageView;

.field private mModeSwitchNameView:Landroid/widget/TextView;

.field private mModeSwitchViewContainer:Landroid/widget/FrameLayout;

.field private mNavigationEnabled:Z

.field private mOrientation:I

.field private mRect:Landroid/graphics/Rect;

.field private mViewIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsGray:Z

    .line 92
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsTouchable:Z

    .line 93
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsModeChanging:Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setImportantForAccessibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    const/4 p2, 0x0

    .line 91
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsGray:Z

    .line 92
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsTouchable:Z

    .line 93
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsModeChanging:Z

    .line 113
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setImportantForAccessibility(I)V

    return-void
.end method

.method private calculateDraggingPosition(FI)I
    .locals 1

    .line 352
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v0, v0

    .line 353
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateModeIndicatorPosition(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private calculateIconPosition(I)I
    .locals 2

    .line 303
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mDisplayHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    .line 304
    iget p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    mul-int/2addr p1, p0

    int-to-float p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static computeReverseIndex(I)I
    .locals 1

    .line 152
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeReverseIndex(I)I

    move-result p0

    return p0
.end method

.method private createCurrentModeIndicator()V
    .locals 1

    const v0, 0x7f0900b1

    .line 247
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    return-void
.end method

.method private createIcons()V
    .locals 7

    .line 216
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 218
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    const v2, 0x7f090120

    .line 221
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    move v3, v2

    .line 224
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 225
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 226
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    .line 227
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 230
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const v6, 0x7f080075

    .line 231
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->getIconId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera/NavigatorContents;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 236
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    const v0, 0x7f090045

    .line 243
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    mul-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private createModeSwitchContainer()V
    .locals 3

    const v0, 0x7f0901d2

    .line 252
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0900fe

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchViewContainer:Landroid/widget/FrameLayout;

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f090123

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f090122

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 264
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 7

    .line 487
    sget-object v0, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 490
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    .line 491
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    const/4 v3, 0x0

    .line 493
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 494
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    .line 495
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_0

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_0

    .line 499
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p0

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeReverseIndex(I)I

    move-result v0

    aget-object v0, p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private sendAccessibilityEventForModeName()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/NavigatorContents;->getTextId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private setIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setIconPositions()V
    .locals 3

    const/4 v0, 0x0

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateIconPosition(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setModeIndicatorPosition(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateModeIndicatorPosition(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private setupModeSwitchContainer()V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->createModeSwitchContainer()V

    .line 547
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchAnimationContainer()V

    return-void
.end method

.method private updateModeSwitchAnimationContainer()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 414
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 420
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 421
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    goto :goto_0

    .line 423
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    :goto_0
    if-eq v3, v2, :cond_2

    .line 429
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 430
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 431
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 435
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011a

    .line 436
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070139

    .line 438
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 439
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070132

    .line 440
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 442
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchViewContainer:Landroid/widget/FrameLayout;

    .line 443
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 445
    iget v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCaptureButtonAreaHeight:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 451
    iget v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_3

    .line 452
    invoke-virtual {v4, v3, v3, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v0, 0x800015

    .line 453
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 455
    :cond_3
    invoke-virtual {v4, v3, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0x51

    .line 456
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 462
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method

.method private updateNavigatorIcons()V
    .locals 5

    .line 378
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 380
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 381
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 382
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 384
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 385
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 400
    :goto_1
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 401
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 402
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 403
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public calculateModeIndicatorPosition(I)I
    .locals 2

    .line 316
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateIconPosition(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    .line 317
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getCurrentModeIndicatorView()Landroid/widget/ImageView;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getModeIndexUnder(II)I
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 523
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    :cond_1
    const/4 v0, 0x0

    .line 526
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 527
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 528
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public getModeSwitchImageView()Landroid/widget/ImageView;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setupModeSwitchContainer()V

    .line 542
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getModeSwitchNameView()Landroid/widget/TextView;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setupModeSwitchContainer()V

    .line 474
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method public grayOut()V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    .line 167
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setAlpha(F)V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsGray:Z

    :cond_0
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIconClickable(Z)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 162
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setVisibility(I)V

    return-void
.end method

.method public isModeChanging()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsModeChanging:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 118
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->createIcons()V

    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->createCurrentModeIndicator()V

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchAnimationContainer()V

    return-void
.end method

.method public resetContentDescriptionForModeName()V
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeSwitchNameView()Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public resume(Lcom/sonyericsson/android/camera/NavigatorContents;)V
    .locals 0

    .line 141
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setIconPositions()V

    .line 143
    iget p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIndicatorPosition(I)V

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIconClickable(Z)V

    return-void
.end method

.method public setDraggingPosition(Lcom/sonyericsson/android/camera/NavigatorContents;F)V
    .locals 2

    .line 334
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDraggingPosition() draggingRate = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-nez v0, :cond_1

    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    .line 340
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateDraggingPosition(FI)I

    move-result p0

    int-to-float p0, p0

    .line 339
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public setIsModeChanging(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsModeChanging:Z

    xor-int/lit8 p1, p1, 0x1

    .line 208
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIconClickable(Z)V

    return-void
.end method

.method public setModeIconClickable(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 284
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsGray:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsTouchable:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsModeChanging:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    move v1, v0

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 287
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 290
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setNavigationEnabled(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 198
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 361
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOrientation() orientation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 363
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    .line 365
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    .line 367
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eq v0, p1, :cond_2

    .line 372
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateNavigatorIcons()V

    .line 373
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchAnimationContainer()V

    :cond_2
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsTouchable:Z

    .line 203
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIconClickable(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x4

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 191
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 193
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIconClickable(Z)V

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/NavigatorContents;Landroid/graphics/Rect;ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 131
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mDisplayHeight:I

    .line 133
    iput p3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCaptureButtonAreaHeight:I

    .line 134
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    .line 135
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setIconPositions()V

    .line 136
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIndicatorPosition(I)V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setAlpha(F)V

    .line 158
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIsGray:Z

    return-void
.end method

.method public updateModeSwitchViews()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/NavigatorContents;->getLargeIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/NavigatorContents;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->sendAccessibilityEventForModeName()V

    return-void
.end method
