.class Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "SemiAutoSeekBarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemiAutoViewFadeAnimation"
.end annotation


# instance fields
.field private mStartTime:J


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    .line 338
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p1, -0x1

    .line 334
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->mStartTime:J

    .line 339
    invoke-virtual {p0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method synthetic constructor <init>(FFLcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$1;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;-><init>(FF)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;)Z
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->isRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;)F
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->getCurrentProgress()F

    move-result p0

    return p0
.end method

.method private getCurrentProgress()F
    .locals 4

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->getDuration()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-float v0, v0

    .line 345
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->getDuration()J

    move-result-wide v1

    long-to-float p0, v1

    div-float/2addr v0, p0

    return v0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private isRunning()Z
    .locals 4

    .line 351
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->getDuration()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->mStartTime:J

    return-void
.end method
