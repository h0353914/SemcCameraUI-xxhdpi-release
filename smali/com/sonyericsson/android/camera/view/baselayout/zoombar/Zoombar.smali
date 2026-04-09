.class public Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;
.super Landroid/widget/FrameLayout;
.source "Zoombar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DELAY_ZOOMBAR_HIDE:I = 0x3e8

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final MIN_VALUE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Zoombar"

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L


# instance fields
.field private mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mLeftIndicator:Landroid/widget/ImageView;

.field private mRightIndicator:Landroid/widget/ImageView;

.field private mValueIndicator:Landroid/widget/TextView;

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoombarDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoombarDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    .line 87
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

    .line 263
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoombarDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->hideWithAnimation(Z)V

    return-void
.end method

.method private hideWithAnimation(Z)V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 289
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mHideAnimationlistener:Landroid/animation/Animator$AnimatorListener;

    .line 292
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showWithAnimation(Z)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoombarDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoombarDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;->onShowZoombar()V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 277
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 278
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 281
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private validateZoomParameters(I)Z
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 308
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getZoomRatios()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    return-object p0
.end method

.method public hideDelayed()V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public hideImmediately()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 260
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->hideWithAnimation(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900bc

    .line 141
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    const v0, 0x7f090118

    .line 142
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0901b4

    .line 143
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotation(F)V

    return-void
.end method

.method public setZoomRatios(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoombarDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$ZoombarDisplayChangedListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    .line 228
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->showWithAnimation(Z)V

    return-void
.end method

.method public showImmediately()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->showWithAnimation(Z)V

    return-void
.end method

.method public zoom(I)I
    .locals 9

    .line 170
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/16 v2, 0x78

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 171
    new-array v0, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zoom() current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " maxZoom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " zoomRatios:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->validateZoomParameters(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->hideImmediately()V

    return p1

    :cond_1
    if-gez p1, :cond_2

    move p1, v3

    :cond_2
    if-le p1, v2, :cond_3

    move p1, v2

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700fb

    .line 192
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 193
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    rsub-int/lit8 v6, p1, 0x78

    mul-int/2addr v4, v6

    .line 195
    div-int/2addr v4, v2

    add-int/2addr v4, v5

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v5, "%.1f"

    new-array v6, v1, [Ljava/lang/Object;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    .line 199
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 209
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    .line 210
    new-array p0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zoom() position:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " srPosition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 214
    :cond_4
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    new-array v1, v1, [Ljava/lang/Object;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v3

    .line 214
    invoke-static {v2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    return p1
.end method
