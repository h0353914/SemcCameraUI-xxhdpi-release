.class public Lcom/sonyericsson/android/camera/view/hint/HintTextView;
.super Landroid/widget/FrameLayout;
.source "HintTextView.java"


# instance fields
.field private mLayoutContainer:Landroid/widget/LinearLayout;

.field private mLayoutGravity:I

.field private mLeftButton:Landroid/widget/Button;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageBackground:Landroid/view/View;

.field protected mMessageContent:Ljava/lang/String;

.field protected mMessageWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

.field private mOrientation:I

.field private mRightButton:Landroid/widget/Button;

.field private mScaledDensityLargest:Z

.field private mSendAccessibilityEventTask:Ljava/lang/Runnable;

.field private mTransparentBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mScaledDensityLargest:Z

    .line 62
    new-instance p1, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getBottomMarginPixelSize(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0700c7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0700c6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .locals 2

    const v0, 0x7f0c0053

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method private postAccessibilityEvent()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLeftButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 6

    const v0, 0x7f090205

    .line 205
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090066

    .line 206
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 208
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v3, 0x30

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 209
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getLeftButtonResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getLeftButtonResourceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setLeftButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getLeftButtonDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 257
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 262
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMessageContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 2

    .line 151
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageWrapType()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    .line 153
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageContent:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageLines()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageContent:Ljava/lang/String;

    .line 166
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setMessageDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1

    .line 245
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMessagePadding(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 383
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 384
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isNeedResetMsgPadding()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mScaledDensityLargest:Z

    if-eqz p1, :cond_1

    .line 385
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private setRightButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 6

    const v0, 0x7f090205

    .line 225
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090066

    .line 226
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 228
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v3, 0x30

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 229
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getRightButtonResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getRightButtonResourceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 238
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setRightButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getRightButtonDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTransparentBackground(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1

    .line 370
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isTransparentBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 372
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const p1, 0x7f08022f

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private updateRotation()V
    .locals 4

    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredWidth()I

    move-result v0

    .line 339
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredHeight()I

    move-result v1

    .line 340
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    .line 342
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getRotation()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setRotation(F)V

    :cond_0
    if-eqz v0, :cond_3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    :cond_1
    float-to-int v0, v3

    .line 355
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_3

    .line 356
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    neg-float v0, v3

    .line 357
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private wrapText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 178
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 183
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    .line 189
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 190
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 191
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v3, v5

    .line 192
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900e2

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0900e4

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f0900e3

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    const v0, 0x7f0900e6

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    const v0, 0x7f0900e5

    .line 82
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x40533333    # 3.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mScaledDensityLargest:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 293
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 294
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    .line 298
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 300
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 302
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 2

    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setLeftButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setRightButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setLeftButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setRightButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTransparentBackground(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessagePadding(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 127
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 128
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 130
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    if-le v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    return-void
.end method

.method public setLayoutGravity(I)V
    .locals 1

    .line 110
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .locals 0

    .line 309
    iput p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    .line 310
    iget p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 p2, 0x30

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    const p2, 0x7f090205

    if-ne p4, p1, :cond_0

    .line 312
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700d2

    .line 313
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700d1

    .line 316
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_1
    const p1, 0x7f090066

    .line 320
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 321
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getBottomMarginPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 322
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 325
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    :cond_1
    return-void
.end method
