.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.super Landroid/widget/FrameLayout;
.source "RotatableToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;,
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    }
.end annotation


# static fields
.field private static final FADEOUT_OFFSET_LONG:J = 0x1194L

.field private static final FADEOUT_OFFSET_SHORT:J = 0x9c4L

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RotatableToast"

.field private static mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

.field private static mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;


# instance fields
.field private mBackgroundView:Landroid/view/ViewGroup;

.field private mBaseView:Landroid/view/ViewGroup;

.field private mDuration:I

.field private mFadeoutAnimation:Landroid/view/animation/Animation;

.field mHandler:Landroid/os/Handler;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mSensorOrientation:I

.field private final mStartAnimation:Ljava/lang/Runnable;

.field private mTextView:Landroid/widget/TextView;

.field private mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x2

    .line 89
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    .line 95
    sget-object p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 104
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    .line 279
    new-instance p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;-><init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/animation/Animation;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/ViewGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private addToWindow()V
    .locals 1

    .line 332
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "addToWindow: Add this view to window."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getContainerRect()Landroid/graphics/Rect;
    .locals 3

    .line 229
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 237
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$2;->$SwitchMap$com$sonyericsson$cameracommon$rotatableview$RotatableToast$ToastPosition:[I

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_0

    return-object v1

    .line 242
    :pswitch_0
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    return-object p0

    .line 239
    :pswitch_1
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static inflate(Landroid/app/Activity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
    .locals 2

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    if-nez p0, :cond_0

    .line 401
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "LayoutInflater not found."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_0
    const v0, 0x7f0c007e

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    return-object p0
.end method

.method private removeFromWindow()V
    .locals 1

    .line 345
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "removeFromWindow: Remove this view from window."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V
    .locals 0

    .line 67
    sput-object p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 68
    sput-object p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    return-void
.end method

.method private updatePosition()V
    .locals 3

    .line 210
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 212
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    .line 213
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 217
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 220
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 224
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private updateTextMaxWidth()V
    .locals 2

    .line 197
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070168

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070167

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    return p0
.end method

.method public hide()V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    return-void
.end method

.method public hideImmediately()V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animation.hasStarted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Animation.hasEnded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 305
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 308
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    goto :goto_0

    .line 316
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 355
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onAnimationEnd() is called."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 366
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "onAnimationStart() is called."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 125
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onFinishInflate() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    const v0, 0x7f090120

    .line 130
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const v0, 0x7f090122

    .line 132
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    const v0, 0x7f090121

    .line 134
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .line 372
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSendAccessibilityEvent: ecent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 372
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x40

    .line 387
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 390
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    .line 393
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return p1
.end method

.method public setDuration(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 4

    .line 156
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSensorOrientation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 159
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    .line 160
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    return-void
.end method

.method public setTextResId(I)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-void
.end method

.method public show()V
    .locals 5

    .line 255
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show: visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->addToWindow()V

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    .line 267
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x1194

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x9c4

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 274
    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 276
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
