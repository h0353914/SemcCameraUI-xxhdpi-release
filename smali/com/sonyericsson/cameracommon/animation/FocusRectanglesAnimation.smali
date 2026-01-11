.class public Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;,
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusRectanglesAnimation"


# instance fields
.field private final mAnimationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/animation/Animation;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private final mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private final mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private final mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimationMap(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    .line 63
    new-instance p1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    const v4, 0x7f0f04e1

    const v5, 0x7f0a0008

    const v2, 0x7f0700b3

    const v3, 0x7f0700b2

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 69
    new-instance p1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    const v10, 0x7f0f04e2

    const v11, 0x7f0a0008

    const v8, 0x7f0700b3

    const v9, 0x7f0700b2

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 75
    new-instance p1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    const v4, 0x7f0f04e0

    const v2, 0x7f0700b1

    const v3, 0x7f0700b0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    return-void
.end method

.method private getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    const v1, 0x7f010012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 183
    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method private playAfFadeOutAnimation(Landroid/view/View;)V
    .locals 3

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private playTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private playTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object p0

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method


# virtual methods
.method public cancelAfFocusAnimationObject(Landroid/view/View;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_1

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public cancelAfFocusAnimationSingle(Landroid/view/View;)V
    .locals 2

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_1

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public cancelAfFocusAnimationTouch(Landroid/view/View;)V
    .locals 2

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    return-object p0
.end method

.method public getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    return-object p0
.end method

.method public getTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 0

    if-nez p2, :cond_0

    .line 163
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    const p1, 0x7f010013

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/view/animation/AnimationSet;

    :cond_0
    return-object p2
.end method

.method public getTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .locals 0

    if-nez p2, :cond_0

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    const p1, 0x7f010014

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/view/animation/AnimationSet;

    :cond_0
    return-object p2
.end method

.method public playAfFadeOutAnimationObject(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    return-void
.end method

.method public playAfFadeOutAnimationSingle(Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    return-void
.end method

.method public playAfFadeOutAnimationTouch(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    return-void
.end method

.method public playAfFocusInAnimationSingle(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080091

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public playAfFocusInAnimationTouch(Landroid/view/View;I)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public playTouchDownAnimation(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f08008e

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public playTouchUpAnimation(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080092

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public startFocusAnimation(Landroid/view/View;I)V
    .locals 0

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 113
    instance-of p2, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p2, :cond_0

    .line 114
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopFocusAnimation(Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 124
    instance-of p1, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    .line 125
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method
