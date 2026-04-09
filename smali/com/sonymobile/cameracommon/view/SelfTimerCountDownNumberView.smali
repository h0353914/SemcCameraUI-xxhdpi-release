.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.super Landroid/widget/ImageView;
.source "SelfTimerCountDownNumberView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADING_DURATION_MS:I = 0xfa

.field private static final ANIMATION_VALUE:I = 0xff

.field private static final SECOND_COUNT_MILLIS:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "SelfTimerCountDownNumberView"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

.field private mCountDownIconId:I

.field private mCountDownInitNum:I

.field private mCurrentCount:I

.field private mIsCountDownStarted:Z

.field private mIsTenDigit:Z

.field private mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 41
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 44
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 41
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 42
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 44
    new-instance p2, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {p2, p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 41
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 42
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 44
    new-instance p2, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {p2, p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object p2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return p0
.end method

.method static synthetic access$410(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I
    .locals 2

    .line 28
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->postNextUpdateEvent()V

    return-void
.end method

.method private getAnimationRatio(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x437a0000    # 250.0f

    div-float/2addr p1, p0

    return p1
.end method

.method private getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I
    .locals 2

    .line 186
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p0

    const/16 v0, 0x5dc

    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_0

    const/16 v0, 0x1f4

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private postNextUpdateEvent()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 3

    .line 216
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getCountDownIconId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    .line 218
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I

    move-result p1

    .line 219
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getAnimationRatio(I)F

    move-result v0

    const/4 v1, 0x2

    .line 220
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 221
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 223
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 224
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 225
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private setImage()V
    .locals 7

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    iget v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 89
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    const v4, 0x7f070215

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 92
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 100
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    if-eqz v1, :cond_2

    .line 101
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3

    .line 103
    invoke-virtual {p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 109
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 112
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_2

    .line 114
    :cond_4
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    const v1, 0x7f080230

    const v4, 0x7f080231

    const v5, 0x7f080232

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    .line 115
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    div-int/lit8 v0, v0, 0xa

    packed-switch v0, :pswitch_data_0

    .line 128
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 129
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage() [Irregal Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 130
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 129
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 117
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_2

    .line 120
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_2

    .line 123
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_2

    .line 132
    :cond_5
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage() : mCurrentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 137
    :cond_6
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    rem-int/lit8 v0, v0, 0xa

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    const v0, 0x7f080238

    .line 139
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_2

    :pswitch_4
    const v0, 0x7f080237

    .line 142
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_2

    :pswitch_5
    const v0, 0x7f080236

    .line 145
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto/16 :goto_2

    :pswitch_6
    const v0, 0x7f080235

    .line 148
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_2

    :pswitch_7
    const v0, 0x7f080234

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_2

    :pswitch_8
    const v0, 0x7f080233

    .line 154
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_2

    .line 157
    :pswitch_9
    invoke-virtual {p0, v5}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_2

    .line 160
    :pswitch_a
    invoke-virtual {p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_2

    .line 163
    :pswitch_b
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_2

    .line 166
    :pswitch_c
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    if-le v0, v2, :cond_7

    const v0, 0x7f08022f

    .line 167
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_2

    .line 172
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 173
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage() [Irregal Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 174
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 173
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :cond_8
    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage() : mCurrentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_2
    :pswitch_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private startCountDownNumber()V
    .locals 2

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 282
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 283
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 284
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V

    .line 285
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->postNextUpdateEvent()V

    return-void
.end method

.method private stopCountDownNumber()V
    .locals 2

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 290
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 292
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public cancelSelfTimerAnimation()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 207
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->stopCountDownNumber()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setIsTenDigit(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsTenDigit:Z

    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 1

    .line 201
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    .line 202
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 212
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 69
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    if-nez v0, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startCountDownNumber()V

    :cond_2
    return-void
.end method
