.class public Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;
.super Landroid/widget/ImageView;
.source "ShortcutButton.java"


# static fields
.field private static final DISABLED_FILTER:I = 0x7f060035

.field public static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final ICON_FADE_SWITCH_ANIMATION_DURATION:I = 0xfa

.field private static final ICON_FADE_SWITCH_ANIMATION_OFFSET:I = 0x32

.field public static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private mIsAvailable:Z

.field private mIsExclusive:Z

.field private mIsGray:Z

.field private mIsTouchable:Z

.field private mLastResId:I

.field private mRequestVisible:Z

.field private mShortcutBar:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->init()V

    return-void
.end method

.method private createIconAnimation()Landroid/view/animation/Animation;
    .locals 10

    .line 142
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 145
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

    .line 147
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v9, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xfa

    .line 148
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v0, 0x32

    .line 149
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    return-object v9
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsAvailable:Z

    .line 113
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsGray:Z

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsTouchable:Z

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsExclusive:Z

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mShortcutBar:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method private update()V
    .locals 3

    .line 122
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setVisibility(I)V

    .line 124
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsExclusive:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsTouchable:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsTouchable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsGray:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setClickable(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsTouchable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsGray:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setPressed(Z)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    .line 127
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setVisibility(I)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setClickable(Z)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setPressed(Z)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setSelected(Z)V

    .line 132
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsExclusive:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsGray:Z

    if-nez v0, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->clearColorFilter()V

    .line 134
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mShortcutBar:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->clearColorFilter()V

    goto :goto_2

    .line 136
    :cond_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x7f060035

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mShortcutBar:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->setColorFilter(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public grayOut()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsGray:Z

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mShortcutBar:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public set(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsAvailable:Z

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method public setExclusive(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsExclusive:Z

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 61
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mLastResId:I

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mShortcutBar:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->setColor(I)V

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageResourceWithAnimation(I)V
    .locals 1

    .line 73
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mLastResId:I

    if-eq v0, p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->createIconAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mLastResId:I

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsTouchable:Z

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setRotation(F)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mRequestVisible:Z

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->mIsGray:Z

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->update()V

    return-void
.end method
