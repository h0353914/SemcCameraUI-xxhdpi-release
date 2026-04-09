.class public Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;
.super Landroid/widget/TextView;
.source "ModeSelectorButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;
    }
.end annotation


# instance fields
.field private mIsAvailable:Z

.field private mOrientation:I

.field private mRequestVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsAvailable:Z

    .line 121
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    .line 122
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 123
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method private setTextResource(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const-string p1, ""

    .line 140
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 127
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setVisibility(I)V

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setClickable(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 131
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setVisibility(I)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setClickable(Z)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setPressed(Z)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 83
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setUiOrientation(I)V

    return-void
.end method

.method public set(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsAvailable:Z

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 4

    .line 68
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mOrientation:I

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getWidth()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    int-to-float v3, v1

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    .line 73
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setPivotX(F)V

    const/4 v3, 0x3

    mul-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 74
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setPivotY(F)V

    .line 75
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method public update(Z)V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 91
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->RETURN:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    goto :goto_0

    .line 93
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setBackgroundResource(I)V

    .line 96
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setTextResource(I)V

    .line 98
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$200(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 101
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 99
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setMinimumWidth(I)V

    return-void
.end method
