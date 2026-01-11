.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
.super Landroid/widget/FrameLayout;
.source "OnScreenButton.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;,
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;
    }
.end annotation


# static fields
.field private static final DISABLED_FILTER:I = 0x7f060035

.field public static final EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

.field public static final EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "OnScreenButton"

.field private static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private final mIcon:Landroid/widget/ImageView;

.field private mIsCanceled:Z

.field private mIsGray:Z

.field private mIsRotatable:Z

.field private mIsTouchable:Z

.field private mIsTouched:Z

.field private mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

.field private mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

.field private mOrientation:I

.field private mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

.field private mStaticOrientation:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    .line 389
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    .line 130
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    .line 136
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->init()V

    return-void
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getWidth()I

    move-result p0

    sub-int/2addr p0, v4

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    return v1
.end method

.method private createIconAnimation()Landroid/view/animation/Animation;
    .locals 9

    .line 440
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 444
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xfa

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v0, 0x32

    .line 446
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    return-object p0
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x2

    .line 141
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 142
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 146
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 147
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    const/4 v2, 0x1

    .line 148
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouchable:Z

    .line 149
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setFocusable(Z)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setFocusableInTouchMode(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setClickable(Z)V

    .line 153
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener-IA;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->addView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method private sendStartupPerformanceDataForReadyForUse()V
    .locals 1

    .line 461
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 465
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 469
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 473
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 477
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 481
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method private update()V
    .locals 5

    .line 248
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->shouldRotateByView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getBackgroundResource()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getBackgroundResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_2

    .line 274
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public changeRotatability(IZ)V
    .locals 0

    .line 397
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    if-nez p2, :cond_0

    .line 399
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    .line 401
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    return-void
.end method

.method public clearTouched()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 453
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 454
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->sendStartupPerformanceDataForReadyForUse()V

    .line 456
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->VIDEO_RECORDING_STOP_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method public grayOut()V
    .locals 1

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    const v0, 0x3ecccccd    # 0.4f

    .line 432
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setAlpha(F)V

    return-void
.end method

.method public isGray()Z
    .locals 0

    .line 436
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    return p0
.end method

.method public isTouched()Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 280
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onTouchEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouchable:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 293
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_3

    goto/16 :goto_1

    .line 305
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "  event:CANCEL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 307
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 308
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 309
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 314
    :cond_5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6

    const-string v0, "  event:MOVE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 317
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onMove(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 319
    :cond_7
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_8

    const-string v0, "  event:MOVE to outside of CaptureButton"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 321
    :cond_8
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 322
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 323
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 324
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 330
    :cond_9
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 331
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a

    const-string v0, "  event:UP"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 333
    :cond_a
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 334
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 335
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 336
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->playSoundEffect(I)V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onUp(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 339
    :cond_b
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 343
    :cond_c
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "  event:UP outside of CaptureButton"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 345
    :cond_d
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 346
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 347
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    .line 350
    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    goto :goto_1

    .line 296
    :cond_e
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_f

    const-string v0, "  event:DOWN"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 298
    :cond_f
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 299
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 300
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onDown(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    :goto_1
    return v1

    .line 289
    :cond_10
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    return v2
.end method

.method public onUpdated(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v0

    .line 407
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 410
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setEnabled(Z)V

    .line 411
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    .line 413
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 414
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->createIconAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 206
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    goto :goto_0

    .line 208
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->update()V

    return-void
.end method

.method public setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 173
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->removeOnUpdatedListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;)V

    .line 178
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    if-eqz p1, :cond_3

    .line 181
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getOnScreenButtonListener()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)V

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setEnabled(Z)V

    .line 184
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->addOnUpdatedListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setEnabled(Z)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSelected(Z)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 216
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    goto :goto_0

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    :goto_0
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouchable:Z

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 223
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    if-ne p1, v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    if-eqz v0, :cond_1

    .line 228
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    goto :goto_0

    .line 230
    :cond_1
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->update()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 422
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setAlpha(F)V

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 427
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
