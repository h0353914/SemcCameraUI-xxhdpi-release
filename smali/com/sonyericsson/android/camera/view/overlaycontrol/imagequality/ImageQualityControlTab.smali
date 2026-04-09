.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;
.super Landroid/widget/LinearLayout;
.source "ImageQualityControlTab.java"


# instance fields
.field private mContainer:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mValueIcon:Landroid/widget/ImageView;

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->setWillNotDraw(Z)V

    const v0, 0x7f09006b

    .line 40
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900a7

    .line 41
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0901b3

    .line 42
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    const v0, 0x7f0901b2

    .line 43
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueIcon:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v0, v1, :cond_0

    .line 45
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mIcon:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 51
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    .line 54
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 57
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueIcon:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    return-void
.end method

.method public setValueIcon(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setValueText(Ljava/lang/String;Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060046

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->mValueText:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
