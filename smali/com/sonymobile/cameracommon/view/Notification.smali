.class public Lcom/sonymobile/cameracommon/view/Notification;
.super Landroid/widget/RelativeLayout;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;,
        Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Notification"


# instance fields
.field private mAnimating:Z

.field private mConditionIcon:Landroid/widget/ImageView;

.field private mConditionText:Landroid/widget/TextView;

.field private mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field private mSceneIcon:Landroid/widget/ImageView;

.field private mSceneText:Landroid/widget/TextView;

.field private mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 38
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/view/Notification;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return p0
.end method

.method private setOrientationConditionText()V
    .locals 2

    .line 295
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 300
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setOrientationSceneText()V
    .locals 2

    .line 282
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    if-eq v0, v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 286
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 290
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelSceneTextAnimation()V
    .locals 4

    .line 219
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSceneTextAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->cancel()V

    return-void
.end method

.method protected createSceneTextAnimation()V
    .locals 1

    .line 205
    new-instance v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;-><init>(Lcom/sonymobile/cameracommon/view/Notification;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    .line 206
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->create()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->releaseSceneTextAnimation()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 67
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishInflate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090124

    .line 70
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    const v0, 0x7f090129

    .line 71
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const v0, 0x7f090066

    .line 72
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    const v0, 0x7f090068

    .line 73
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->createSceneTextAnimation()V

    return-void
.end method

.method public onMacroStatusChanged(ZLcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;)V
    .locals 4

    .line 85
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Macro: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f090107

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090106

    .line 88
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    const p2, 0x7f080229

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const p2, 0x7f0f0175

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_0

    .line 101
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    if-ne p2, p1, :cond_2

    .line 102
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 5

    .line 176
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onModeChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f090067

    const v3, 0x7f090125

    const/4 v4, 0x4

    if-eqz p2, :cond_1

    .line 179
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 184
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 188
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 189
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onRecognisedConditionChanged(Lcom/sonymobile/cameracommon/view/RecognizedCondition;)V
    .locals 5

    .line 142
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const v1, 0x7f090106

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecognisedConditionChanged: condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 142
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getIconId()I

    move-result v0

    .line 146
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getTextId()I

    move-result p1

    .line 147
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    if-lez v0, :cond_1

    .line 149
    iget-object v3, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-lez p1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_1

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method

.method public onRecognisedSceneChanged(Lcom/sonymobile/cameracommon/view/RecognizedScene;)V
    .locals 4

    .line 112
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecognisedSceneChanged: scene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 115
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 116
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getIconId()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getTextId()I

    move-result v2

    const v3, 0x7f090107

    if-lez v0, :cond_2

    if-lez v2, :cond_2

    .line 119
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getSceneMode()Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method

.method protected releaseSceneTextAnimation()V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->release()V

    return-void
.end method

.method protected setAnimationStatus(Z)V
    .locals 4

    .line 196
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnimationStatus: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 201
    :cond_1
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1

    .line 271
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 273
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 275
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 276
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationSceneText()V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 278
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationConditionText()V

    return-void
.end method

.method protected startSceneTextAnimation()V
    .locals 4

    .line 214
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSceneTextAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->start()V

    return-void
.end method

.method public updateLayout()V
    .locals 4

    .line 168
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLayout: entry: visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->requestLayout()V

    .line 172
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method
