.class public Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;
.super Landroid/widget/ImageView;
.source "ShortcutButton.java"


# static fields
.field private static final DISABLED_FILTER:I = 0x7f06003a

.field private static final ICON_FADE_SWITCH_ANIMATION_DURATION:I = 0xfa

.field private static final ICON_FADE_SWITCH_ANIMATION_OFFSET:I = 0x32


# instance fields
.field private mIsAvailable:Z

.field private mLastResId:I

.field private mRequestVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->init()V

    return-void
.end method

.method private createIconAnimation()Landroid/view/animation/Animation;
    .locals 10

    .line 104
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    div-float v8, p0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 109
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v9, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xfa

    .line 110
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v0, 0x32

    .line 111
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    return-object v9
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsAvailable:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setVisibility(I)V

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setClickable(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 91
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setClickable(Z)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setPressed(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setSelected(Z)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->clearColorFilter()V

    goto :goto_1

    :cond_1
    const v0, 0x7f06003a

    .line 99
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setColorFilter(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method public set(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsAvailable:Z

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mLastResId:I

    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageResourceWithAnimation(I)V
    .locals 1

    .line 58
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mLastResId:I

    if-eq v0, p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->createIconAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mLastResId:I

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setRotation(F)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method
