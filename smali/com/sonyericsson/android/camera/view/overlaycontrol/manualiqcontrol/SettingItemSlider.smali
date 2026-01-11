.class abstract Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.source "SettingItemSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;
    }
.end annotation


# instance fields
.field private mBottomPadding:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private final mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

.field private final mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

.field private final mShowAutoSettingItemAsButton:Z

.field private final mShowMaxMinValue:Z

.field private mTopPadding:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnSlideListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTag(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V
    .locals 3

    .line 56
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    const/4 p2, -0x1

    .line 50
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTopPadding:I

    .line 51
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mBottomPadding:I

    .line 52
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mCurrentPosition:I

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    .line 59
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    .line 60
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowMaxMinValue:Z

    .line 61
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    .line 64
    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder-IA;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;Landroid/content/Context;)V

    iput-object v0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    .line 78
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f090060

    .line 81
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 112
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0900f1

    .line 115
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_0

    const p3, 0x7f090047

    .line 120
    invoke-virtual {p5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    .line 121
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$3;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p4, :cond_2

    const p3, 0x7f090118

    .line 134
    invoke-virtual {p5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    const p3, 0x7f09011e

    .line 135
    invoke-virtual {p5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    sget p4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le p3, p4, :cond_1

    .line 139
    sget p3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p3, p4

    const/high16 p4, 0x43200000    # 160.0f

    div-float/2addr p3, p4

    .line 142
    iget-object p4, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    .line 143
    invoke-virtual {p4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    iget-object p5, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 149
    iget v2, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    .line 151
    invoke-virtual {p4, v1, v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    invoke-virtual {p5, v1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 156
    iget v0, p5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 159
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_1
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    sget-object p3, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p1, p3}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 164
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    sget-object p3, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p1, p3}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 165
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMaxValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMinValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    const p1, 0x7f090117

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAccessibilityTraversalAfter(I)V

    .line 170
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAccessibilityTraversalAfter(I)V

    :cond_2
    return-void
.end method

.method private getTag()Ljava/lang/String;
    .locals 0

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getAutoButtonContentDescription(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0f0078

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0077

    .line 301
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAutoSettingItemPosition()I
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMemoryStepCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 389
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called when auto is unsupported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract getBackgroundImageResource(I)I
.end method

.method protected getBottomPadding()I
    .locals 3

    .line 412
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mBottomPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 413
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-nez v0, :cond_0

    const v0, 0x7f07020e

    .line 414
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mBottomPadding:I

    goto :goto_0

    :cond_0
    const v0, 0x7f07020d

    .line 416
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mBottomPadding:I

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v0, v1, :cond_1

    .line 423
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mBottomPadding:I

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mBottomPadding:I

    .line 429
    :cond_1
    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mBottomPadding:I

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 242
    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mCurrentPosition:I

    return p0
.end method

.method protected getDefaultSettingItemPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDimension(I)I
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getIndicatorContentDescription(I)Ljava/lang/String;
    .locals 1

    .line 305
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->indexOf(I)I

    move-result p1

    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getIndicatorImageResource(I)I
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getDefaultSettingItemPosition()I

    move-result p0

    if-ne p1, p0, :cond_0

    const p0, 0x7f08037f

    return p0

    :cond_0
    const p0, 0x7f08037e

    return p0
.end method

.method protected abstract getMaxValue()Ljava/lang/String;
.end method

.method protected getMemoryStepCount()I
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    const-string v1, "This method should be overwritten for your use case"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-le v0, v3, :cond_3

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sub-int/2addr v0, v2

    return v0

    .line 368
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getMemoryStepSize()F
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getBottomPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 357
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMemoryStepCount()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method protected abstract getMinValue()Ljava/lang/String;
.end method

.method protected getSelectedSettingItemPosition()I
    .locals 6

    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMemoryStepCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 338
    :goto_1
    const-string v3, "getSelectedSettingItemPosition:    index = "

    if-ge v2, v0, :cond_3

    .line 339
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->indexOf(I)I

    move-result v4

    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getSelectedSettingItemPosition: position = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    .line 349
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getSelectedSettingItemPosition: position = 0"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->indexOf(I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTopPadding()I
    .locals 3

    .line 396
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTopPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f07020f

    .line 397
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTopPadding:I

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v0, v1, :cond_0

    .line 403
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTopPadding:I

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTopPadding:I

    .line 408
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTopPadding:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected indexOf(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    .line 377
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method should be overwritten for your use case"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onAutoCheckedChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getAutoSettingItemPosition()I

    move-result p1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getDefaultSettingItemPosition()I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public refresh()V
    .locals 4

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getSelectedSettingItemPosition()I

    move-result v0

    .line 208
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refresh: position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getAutoSettingItemPosition()I

    move-result v0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getDefaultSettingItemPosition()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mTouchListener:Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method public setUiOrientation(I)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getBackgroundImageResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 228
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowMaxMinValue:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 233
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotation(F)V

    :cond_1
    return-void
.end method

.method protected update(F)V
    .locals 3

    .line 252
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update: y = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTopPadding()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMemoryStepSize()F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    .line 255
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 256
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMemoryStepCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->refresh()V

    return-void
.end method

.method protected updateIndicator(IZ)V
    .locals 6

    .line 262
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateIndicator: position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f090117

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMemoryStepCount()I

    move-result v2

    if-gt p1, v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getMemoryStepSize()F

    move-result v3

    int-to-float v4, p1

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTopPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    .line 267
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 266
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 268
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateIndicator: setY = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getIndicatorImageResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getIndicatorContentDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAccessibilityTraversalAfter(I)V

    .line 276
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getAutoSettingItemPosition()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 280
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getAutoButtonContentDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 283
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getAutoButtonContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAccessibilityTraversalAfter(I)V

    .line 288
    :cond_4
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mCurrentPosition:I

    if-eq p1, v0, :cond_5

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->updateSelectedSettingItem(IZ)V

    .line 290
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->mCurrentPosition:I

    :cond_5
    return-void
.end method

.method protected updateSelectedSettingItem(IZ)V
    .locals 4

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    const/4 v2, 0x0

    .line 318
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->indexOf(I)I

    move-result v0

    .line 321
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSelectedSettingItem: position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateSelectedSettingItem:    index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    const/4 v0, 0x1

    .line 326
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    if-eqz p2, :cond_3

    .line 328
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_2

    .line 329
    move-object p2, p1

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateSelectedSettingItem: apply "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 332
    :cond_2
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->select()V

    :cond_3
    return-void
.end method
