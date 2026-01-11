.class public Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
.super Landroid/widget/FrameLayout;
.source "PredictiveLaunchCoverView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;,
        Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;
    }
.end annotation


# static fields
.field private static final LOWER_TOUCH_INTERVAL_TIME_MILLIS:J = 0x0L

.field private static final TOUCH_AREA_SIZE_PER_DP:D = 0.5555555555555556

.field private static final UPPER_TOUCH_INTERVAL_TIME_MILLIS:J = 0x12cL


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mDescriptionMargin:I

.field private mExists:Z

.field private mHoleView:Landroid/widget/ImageView;

.field private mListener:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;

.field private mOrientation:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSquareBox:Landroid/widget/FrameLayout;

.field private mTouchArea:Landroid/widget/FrameLayout;

.field private mTouchDownTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    return-void
.end method

.method private checkTouchEnabled()Z
    .locals 4

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static inflate(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
    .locals 3

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c002b

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    .line 79
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v2, p2, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->mDescriptionResourceId:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 79
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p0, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->mDescriptionResourceId:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;

    const/4 p0, 0x1

    .line 83
    iput-boolean p0, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    .line 84
    iput-object p3, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 85
    iput-object p4, v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private sendStartupPerformanceDataForReadyForUse()V
    .locals 1

    .line 97
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 101
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method private show()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    .line 168
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->startPredictiveLaunchAnimation(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_0
    return-void
.end method

.method private startPredictiveLaunchAnimation(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Animatable2;

    .line 193
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p0, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 197
    :cond_0
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->start()V

    :cond_1
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 233
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe1c71c71c71c72L    # 0.5555555555555556

    mul-double/2addr v0, v2

    .line 237
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    double-to-int v0, v0

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 238
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v1, 0x51

    .line 244
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 245
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescriptionMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    .line 249
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    .line 251
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    .line 252
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescriptionMargin:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 254
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    .line 266
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 267
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 268
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->sendStartupPerformanceDataForReadyForUse()V

    return-void
.end method

.method public exists()Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    return p0
.end method

.method public hide(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    .line 188
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->startPredictiveLaunchAnimation(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900e8

    .line 108
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mHoleView:Landroid/widget/ImageView;

    const v0, 0x7f090141

    .line 109
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0901cb

    .line 110
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mSquareBox:Landroid/widget/FrameLayout;

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070166

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescriptionMargin:I

    const v0, 0x7f090207

    .line 113
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mDescription:Landroid/widget/TextView;

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 126
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 127
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mExists:Z

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout()V

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->show()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->checkTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;

    if-eqz p0, :cond_2

    .line 152
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;->onCircleTouched()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mTouchDownTime:J

    :cond_2
    :goto_0
    return v0
.end method

.method public performClick()Z
    .locals 0

    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateLayout(I)V
    .locals 1

    .line 216
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    if-eqz p1, :cond_0

    .line 218
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->mOrientation:I

    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout()V

    :cond_1
    return-void
.end method
