.class public Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;
.super Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;
.source "LowBatteryIndicator.java"


# instance fields
.field private final mIconWidth:I

.field private mLevel:I

.field private final mRightMargin:I

.field private mTextView:Landroid/widget/TextView;

.field private final mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070239

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mIconWidth:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07006d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mTextWidth:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07023a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mRightMargin:I

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mLevel:I

    return-void
.end method

.method private updateTextView(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f090062

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mTextView:Landroid/widget/TextView;

    .line 80
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p1, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onUpdated(Landroid/view/View;ZI)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mIconWidth:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mTextWidth:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mRightMargin:I

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 58
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 59
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mTextWidth:I

    iget p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mIconWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 60
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mIconWidth:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 63
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->updateTextView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mTextWidth:I

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 p0, 0x0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1

    .line 42
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mLevel:I

    .line 43
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->mLevel:I

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->set(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->set(Z)V

    :goto_0
    return-void
.end method
