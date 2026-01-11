.class public Lcom/sonyericsson/android/camera/view/blur/BlurView;
.super Landroid/widget/ImageView;
.source "BlurView.java"


# static fields
.field public static final ASPECT_11_9:I = 0x7a

.field public static final ASPECT_16_9:I = 0xb1

.field public static final ASPECT_1_1:I = 0x64

.field public static final ASPECT_4_3:I = 0x85

.field private static final TAG:Ljava/lang/String; = "BlurView"


# instance fields
.field private mActivityOrientation:I

.field private mIsRTL:Z

.field private mPreviewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    const/16 v0, 0x780

    const/16 v1, 0x438

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mPreviewRect:Landroid/graphics/Rect;

    .line 32
    iput v2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mActivityOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    const/16 p2, 0x780

    const/16 v0, 0x438

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mPreviewRect:Landroid/graphics/Rect;

    .line 32
    iput v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mActivityOrientation:I

    return-void
.end method

.method private getBlurViewRect()Landroid/graphics/Rect;
    .locals 4

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->getAspect()I

    move-result p0

    const/16 v0, 0xb1

    const/16 v1, 0x780

    const/16 v2, 0x438

    const/4 v3, 0x0

    if-ne p0, v0, :cond_0

    .line 80
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_0
    const/16 v0, 0x85

    if-ne p0, v0, :cond_1

    .line 82
    new-instance p0, Landroid/graphics/Rect;

    const/16 v0, 0x5a0

    invoke-direct {p0, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_1
    const/16 v0, 0x64

    if-ne p0, v0, :cond_2

    .line 84
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_2
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_3

    .line 86
    new-instance p0, Landroid/graphics/Rect;

    const/16 v0, 0x528

    invoke-direct {p0, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 88
    :cond_3
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private isRTL()Z
    .locals 3

    .line 130
    new-instance p0, Ljava/util/Locale$Builder;

    invoke-direct {p0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private setOrientation()V
    .locals 3

    .line 137
    iget v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mActivityOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 138
    iget v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mActivityOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    .line 139
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setRotation(F)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setRotation(F)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->invalidate()V

    return-void
.end method

.method private setTranslation()V
    .locals 8

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->getAspect()I

    move-result v0

    .line 97
    iget v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mActivityOrientation:I

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/16 v4, 0x7a

    const/16 v5, 0x85

    const/16 v6, 0xb1

    const/4 v7, 0x0

    if-ne v1, v2, :cond_6

    if-ne v0, v6, :cond_1

    .line 99
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mIsRTL:Z

    const/high16 v1, 0x43d20000    # 420.0f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3c2e0000    # -420.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationY(F)V

    goto :goto_4

    :cond_1
    if-ne v0, v5, :cond_3

    .line 102
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mIsRTL:Z

    const/high16 v1, 0x43340000    # 180.0f

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/high16 v0, -0x3ccc0000    # -180.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationY(F)V

    goto :goto_4

    :cond_3
    if-ne v0, v4, :cond_5

    .line 105
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mIsRTL:Z

    const/high16 v1, 0x42f00000    # 120.0f

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    const/high16 v0, -0x3d100000    # -120.0f

    :goto_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationY(F)V

    goto :goto_4

    :cond_5
    if-ne v0, v3, :cond_c

    .line 108
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    .line 109
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationY(F)V

    goto :goto_4

    .line 112
    :cond_6
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mIsRTL:Z

    if-eqz v1, :cond_a

    if-ne v0, v6, :cond_7

    .line 114
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    if-ne v0, v5, :cond_8

    const/high16 v0, -0x3c100000    # -480.0f

    .line 116
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    goto :goto_3

    :cond_8
    if-ne v0, v4, :cond_9

    const/high16 v0, -0x3bea0000    # -600.0f

    .line 118
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    goto :goto_3

    :cond_9
    if-ne v0, v3, :cond_b

    const/high16 v0, -0x3bae0000    # -840.0f

    .line 120
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    goto :goto_3

    .line 123
    :cond_a
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationX(F)V

    .line 125
    :cond_b
    :goto_3
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslationY(F)V

    :cond_c
    :goto_4
    return-void
.end method

.method private updateLayout()V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->getBlurViewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 70
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setTranslation()V

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setOrientation()V

    return-void
.end method


# virtual methods
.method public getAspect()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public startShowAnimation(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;)Landroid/view/animation/Animation;
    .locals 3

    .line 156
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const v1, 0x7f01000c

    .line 157
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 159
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 161
    new-instance v1, Lcom/sonyericsson/android/camera/view/blur/BlurView$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/android/camera/view/blur/BlurView$1;-><init>(Lcom/sonyericsson/android/camera/view/blur/BlurView;Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 179
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    return-object v0
.end method

.method public updateLayout(Landroid/graphics/Rect;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mPreviewRect:Landroid/graphics/Rect;

    .line 62
    iput p2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mActivityOrientation:I

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->isRTL()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView;->mIsRTL:Z

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurView;->updateLayout()V

    return-void
.end method
