.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;
.super Landroid/view/animation/DecelerateInterpolator;
.source "SelfTimerCountDownCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleDecelerateInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const v0, 0x3fd55555

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    move p1, v0

    .line 166
    :cond_0
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
