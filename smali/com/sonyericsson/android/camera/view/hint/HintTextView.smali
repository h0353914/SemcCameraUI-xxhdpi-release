.class public Lcom/sonyericsson/android/camera/view/hint/HintTextView;
.super Landroid/widget/FrameLayout;
.source "HintTextView.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mLayoutContainer:Landroid/widget/LinearLayout;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageBackground:Landroid/view/View;

.field private mOrientation:I

.field private mSendAccessibilityEventTask:Ljava/lang/Runnable;

.field private mSubMessage:Landroid/widget/TextView;

.field private mTransparentBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 47
    new-instance p1, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getBottomMarginPixelSize(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0700ae

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0700ad

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .locals 2

    const v0, 0x7f0c0040

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method private postAccessibilityEvent()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setButtonDescription(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setButtonMessage(I)V
    .locals 5

    const v0, 0x7f090097

    .line 130
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090046

    .line 131
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 134
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private setMessageContents(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setMessageDescription(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSubMessage(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f0900d0

    .line 111
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090179

    .line 112
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSubMessage:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSubMessage:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSubMessage:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSubMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTransparentBackground(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    if-eqz p1, :cond_0

    .line 263
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const p1, 0x7f0801ed

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private updateRotation()V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredWidth()I

    move-result v0

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredHeight()I

    move-result v1

    .line 235
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    .line 237
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getRotation()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setRotation(F)V

    :cond_0
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    :cond_1
    float-to-int v0, v3

    .line 250
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_2

    .line 251
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09009f

    .line 63
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0900a0

    .line 64
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f0900a2

    .line 65
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSubMessage:Landroid/widget/TextView;

    const v0, 0x7f090045

    .line 66
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    const v0, 0x7f0900a1

    .line 67
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSubMessage:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 186
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageContents(I)V

    .line 80
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getSubMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setSubMessage(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getButtonMessageResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setButtonMessage(I)V

    .line 82
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageDescription(I)V

    .line 83
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getButtonDescriptionResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setButtonDescription(I)V

    .line 84
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isTransparentBackground()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTransparentBackground(Z)V

    .line 86
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 87
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    :cond_1
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .locals 3

    .line 201
    iput p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    const v0, 0x7f090046

    .line 202
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 203
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getBottomMarginPixelSize(I)I

    move-result p4

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p4, v0

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr p1, p4

    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float p1, p1, v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    .line 208
    iget p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 213
    invoke-static {p2, v0, p3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object p1

    float-to-int p2, p4

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    .line 216
    invoke-virtual {p0, v1, v1, v1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setPadding(IIII)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setPadding(IIII)V

    .line 220
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    :cond_1
    return-void
.end method
