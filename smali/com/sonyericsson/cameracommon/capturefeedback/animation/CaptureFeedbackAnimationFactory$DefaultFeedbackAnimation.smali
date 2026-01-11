.class Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;
.super Ljava/lang/Object;
.source "CaptureFeedbackAnimationFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFeedbackAnimation"
.end annotation


# static fields
.field private static final BLUE:F = 0.0f

.field private static final CONTROL_X1:F = 0.95f

.field private static final CONTROL_X2:F = 0.795f

.field private static final CONTROL_Y1:F = 0.05f

.field private static final CONTROL_Y2:F = 0.035f

.field private static final DURATION_MILLIS:J = 0xc8L

.field private static final END_ALPHA:F = 0.0f

.field private static final GREEN:F = 0.0f

.field private static final RED:F = 0.0f

.field private static final START_ALPHA:F = 1.0f


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4b851f    # 0.795f

    const v2, 0x3d0f5c29    # 0.035f

    const v3, 0x3f733333    # 0.95f

    const v4, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z
    .locals 3

    long-to-float v0, p2

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    .line 51
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr p0, v2

    add-float/2addr p0, v1

    .line 54
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 56
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 57
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    .line 58
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {p2, p3, v2}, [Ljava/lang/Object;

    move-result-object p2

    .line 55
    const-string/jumbo p3, "time:%d progress:%f alpha:%f"

    invoke-static {v1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    float-to-double p2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, p2, v0

    if-lez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p2, 0x0

    .line 63
    invoke-interface {p1, p0, p2, p2, p2}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;->drawColor(FFFF)V

    const/4 p0, 0x1

    return p0
.end method
