.class public Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
.super Landroid/widget/RelativeLayout;
.source "SmileGauge.java"


# static fields
.field public static final SMILE_LEVEL:I = 0x5

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SmileGauge"


# instance fields
.field private mIsForLandscape:Z

.field private mMargin:I

.field private mSmileScore:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 61
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    .line 77
    sget-object v0, Lcom/sonyericsson/android/camera/R$styleable;->SmileGauge:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected alignToDirection(I)V
    .locals 4

    .line 289
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "align direction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7f09010f

    .line 294
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected clearLayoutParams()V
    .locals 3

    .line 271
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "clearLayoutParams() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x5

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 279
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 280
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 281
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected drawThreshold()V
    .locals 6

    .line 144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "drawThreshold() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f090169

    .line 146
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 148
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 p0, 0x9

    .line 153
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 155
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f090166

    .line 157
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v4

    const/16 v5, 0xc

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    .line 160
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 162
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 p0, 0xb

    .line 166
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getSmileScore()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    return p0
.end method

.method public isForLandscape()Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    return p0
.end method

.method public isLayoutOrientationLandscape()Z
    .locals 1

    .line 313
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected moveToId(I)V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getId()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/16 p1, 0x8

    .line 260
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 262
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 302
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 87
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onFinishInflate() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    return-void
.end method

.method public setPosition(IIIII)V
    .locals 4

    .line 198
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPosition( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eq p1, p3, :cond_2

    if-ne p2, p4, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->update(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x4

    .line 201
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setSmileLevel(I)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    return-void
.end method

.method public setSmileScore(I)V
    .locals 4

    .line 99
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "setSmileScore() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 100
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmileScore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x64

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_3

    move p1, v0

    .line 106
    :cond_3
    :goto_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    const v0, 0x7f090168

    .line 107
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;

    .line 108
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->setSmileScore(I)V

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result p1

    if-nez p1, :cond_5

    .line 112
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result p0

    const/16 v1, 0xa

    const/16 v2, 0xc

    if-eqz p0, :cond_4

    .line 114
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 118
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    :goto_1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->invalidate()V

    .line 124
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    const-string p0, "setSmileScore: invalidate"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 180
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->drawThreshold()V

    :cond_1
    return-void
.end method

.method protected update(I)V
    .locals 5

    .line 213
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 214
    new-array v0, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "update() orientation"

    aput-object v4, v0, v3

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->orientationToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_2

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-nez v0, :cond_6

    if-eq p1, v1, :cond_6

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 220
    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    return-void

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-nez v0, :cond_4

    if-ne p1, v2, :cond_5

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eq p1, v1, :cond_6

    .line 226
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 227
    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    return-void

    .line 232
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    const/4 v0, 0x6

    const v1, 0x7f090167

    if-ne p1, v2, :cond_8

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 235
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    goto :goto_0

    :cond_7
    const p1, 0x7f09016a

    .line 238
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    const/4 p1, 0x7

    .line 239
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    goto :goto_0

    .line 242
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f090165

    .line 243
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    const/4 p1, 0x5

    .line 244
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    goto :goto_0

    .line 246
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->postInvalidate()V

    return-void
.end method
