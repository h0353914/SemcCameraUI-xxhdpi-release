.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;
.super Landroid/widget/LinearLayout;
.source "ManualIqControlTab.java"


# instance fields
.field private mContainer:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mOnTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

.field private mTabNotAvailableKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private mValueIcon:Landroid/widget/ImageView;

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setWillNotDraw(Z)V

    const v0, 0x7f0900a3

    .line 45
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900eb

    .line 46
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f09021e

    .line 47
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    const v0, 0x7f09021d

    .line 48
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueIcon:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v0, v1, :cond_0

    .line 50
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mIcon:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 56
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueIcon:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mOnTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mTabNotAvailableKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;->onTabNotAvailable(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    const/4 p0, 0x1

    return p0

    .line 128
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mIcon:Landroid/widget/ImageView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 104
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    const-string p1, "#66FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mIcon:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnTabAvailableListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mOnTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

    return-void
.end method

.method public setTabNotAvailableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mTabNotAvailableKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 95
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    return-void
.end method

.method public setValueIcon(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setValueText(Ljava/lang/String;Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    .line 81
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060044

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->mValueText:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
