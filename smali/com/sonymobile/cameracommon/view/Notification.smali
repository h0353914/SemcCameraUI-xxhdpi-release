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
.method static bridge synthetic -$$Nest$fgetmAnimating(Lcom/sonymobile/cameracommon/view/Notification;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConditionText(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSceneText(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 37
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return-void
.end method

.method private setOrientationConditionText()V
    .locals 2

    .line 294
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 299
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setOrientationSceneText()V
    .locals 2

    .line 281
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    if-eq v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 285
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 289
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelSceneTextAnimation()V
    .locals 2

    .line 218
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelSceneTextAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->cancel()V

    return-void
.end method

.method protected createSceneTextAnimation()V
    .locals 1

    .line 204
    new-instance v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;-><init>(Lcom/sonymobile/cameracommon/view/Notification;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    .line 205
    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->create()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->releaseSceneTextAnimation()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 66
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishInflate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090178

    .line 69
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    const v0, 0x7f09017d

    .line 70
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const v0, 0x7f09009e

    .line 71
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900a0

    .line 72
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->createSceneTextAnimation()V

    return-void
.end method

.method public onMacroStatusChanged(ZLcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;)V
    .locals 2

    .line 84
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Macro: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f090157

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090156

    .line 87
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    const p2, 0x7f080283

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const p2, 0x7f0f0239

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_0

    .line 100
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    if-ne p2, p1, :cond_2

    .line 101
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 3

    .line 175
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onModeChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f09009f

    const v1, 0x7f090179

    const/4 v2, 0x4

    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 183
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 187
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 188
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onRecognisedConditionChanged(Lcom/sonymobile/cameracommon/view/RecognizedCondition;)V
    .locals 4

    .line 141
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const v1, 0x7f090156

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onRecognisedConditionChanged: condition: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getIconId()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getTextId()I

    move-result p1

    .line 146
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    if-lez v0, :cond_1

    .line 148
    iget-object v3, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-lez p1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_1

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method

.method public onRecognisedSceneChanged(Lcom/sonymobile/cameracommon/view/RecognizedScene;)V
    .locals 4

    .line 111
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRecognisedSceneChanged: scene: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 114
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 115
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getIconId()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getTextId()I

    move-result v1

    const v2, 0x7f090157

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 118
    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getSceneMode()Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method

.method protected releaseSceneTextAnimation()V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->release()V

    return-void
.end method

.method protected setAnimationStatus(Z)V
    .locals 2

    .line 195
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAnimationStatus: from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 200
    :cond_1
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1

    .line 270
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 272
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 274
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 275
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationSceneText()V

    .line 276
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 277
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationConditionText()V

    return-void
.end method

.method protected startSceneTextAnimation()V
    .locals 2

    .line 213
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startSceneTextAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->start()V

    return-void
.end method

.method public updateLayout()V
    .locals 2

    .line 167
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLayout: entry: visibility: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->requestLayout()V

    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    return-void
.end method
