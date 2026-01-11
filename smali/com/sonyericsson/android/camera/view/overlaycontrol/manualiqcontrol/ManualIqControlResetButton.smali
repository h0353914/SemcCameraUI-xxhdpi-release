.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;
.super Landroid/widget/RelativeLayout;
.source "ManualIqControlResetButton.java"


# instance fields
.field private mContainer:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 29
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900a3

    .line 31
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->mContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f090164

    .line 32
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->mTextView:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->mTextView:Landroid/widget/TextView;

    const-string v1, "RESET"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->mTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->mTextView:Landroid/widget/TextView;

    const-string p1, "#FFFFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->mTextView:Landroid/widget/TextView;

    const-string p1, "#4CFFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    return-void
.end method
