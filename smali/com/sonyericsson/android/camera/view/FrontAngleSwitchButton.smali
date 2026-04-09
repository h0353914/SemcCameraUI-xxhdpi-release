.class public Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;
.super Landroid/widget/ImageView;
.source "FrontAngleSwitchButton.java"


# instance fields
.field private mAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

.field private mCurrentOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mCurrentOrientation:I

    .line 25
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mCurrentOrientation:I

    .line 25
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-void
.end method

.method private update()V
    .locals 2

    .line 56
    iget v0, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_0

    const v0, 0x7f080357

    .line 59
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f080358

    .line 61
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_1

    const v0, 0x7f080359

    .line 66
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f08035a

    .line 68
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setBackgroundResource(I)V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 83
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setVisibility(I)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 48
    iget v0, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mCurrentOrientation:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mCurrentOrientation:I

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->update()V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setVisibility(I)V

    return-void
.end method

.method public switchFrontAngle(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 37
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->mAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne p1, v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0087

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0088

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->update()V

    return-void
.end method
