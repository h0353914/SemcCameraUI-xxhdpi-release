.class abstract Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.source "SettingItemSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;
    }
.end annotation


# instance fields
.field private mBottomPadding:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private final mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

.field private final mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

.field private final mShowAutoSettingItemAsButton:Z

.field private final mShowMaxMinValue:Z

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V
    .locals 2

    .line 53
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    const/4 p2, -0x1

    .line 47
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mTopPadding:I

    .line 48
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mBottomPadding:I

    .line 49
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mCurrentPosition:I

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    .line 56
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    .line 57
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowMaxMinValue:Z

    .line 58
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    .line 61
    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    .line 62
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    new-instance p4, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$1;

    invoke-direct {p4, p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;Landroid/content/Context;)V

    iput-object p4, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c008e

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    const p3, 0x7f09003c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    .line 79
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    new-instance p3, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    const p3, 0x7f0900ad

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    .line 112
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz p2, :cond_0

    .line 116
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    const p4, 0x7f090028

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    .line 117
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    new-instance p4, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$3;

    invoke-direct {p4, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$3;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_0
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowMaxMinValue:Z

    if-eqz p2, :cond_2

    .line 130
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    const p4, 0x7f0900cd

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    .line 131
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    const p4, 0x7f0900d2

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sget p2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le p1, p2, :cond_1

    .line 135
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    .line 138
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p4, p4, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {p5, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p1

    float-to-int p5, p5

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v1, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 147
    invoke-virtual {p2, p3, p5, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    invoke-virtual {p4, p3, p3, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p5, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p1

    float-to-int p5, p5

    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 152
    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p5, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p1

    float-to-int p1, p5

    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    sget-object p2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p1, p2}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    sget-object p2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p1, p2}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMaxValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMinValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    return-object p0
.end method

.method private getTag()Ljava/lang/String;
    .locals 0

    .line 424
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

    const p1, 0x7f0f0068

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0067

    .line 283
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAutoSettingItemPosition()I
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-nez v0, :cond_0

    .line 371
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called when auto is unsupported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMemoryStepCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected abstract getBackgroundImageResource(I)I
.end method

.method protected getBottomPadding()I
    .locals 3

    .line 394
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mBottomPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 395
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-nez v0, :cond_0

    const v0, 0x7f0701bd

    .line 396
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mBottomPadding:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0701bc

    .line 398
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mBottomPadding:I

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v0, v1, :cond_1

    .line 405
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 407
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mBottomPadding:I

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mBottomPadding:I

    .line 411
    :cond_1
    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mBottomPadding:I

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 226
    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mCurrentPosition:I

    return p0
.end method

.method protected getDefaultSettingItemPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDimension(I)I
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getIndicatorContentDescription(I)Ljava/lang/String;
    .locals 1

    .line 287
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->indexOf(I)I

    move-result p1

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getIndicatorImageResource(I)I
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getDefaultSettingItemPosition()I

    move-result p0

    if-ne p1, p0, :cond_0

    const p0, 0x7f080335

    return p0

    :cond_0
    const p0, 0x7f080334

    return p0
.end method

.method protected abstract getMaxValue()Ljava/lang/String;
.end method

.method protected getMemoryStepCount()I
    .locals 4

    .line 343
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 344
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    if-gt v0, v3, :cond_1

    .line 346
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should be overwritten for your use case"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-gt v0, v2, :cond_1

    .line 350
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should be overwritten for your use case"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_1
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    sub-int/2addr v0, v2

    return v0
.end method

.method protected getMemoryStepSize()F
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getBottomPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 339
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMemoryStepCount()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method protected abstract getMinValue()Ljava/lang/String;
.end method

.method protected getSelectedSettingItemPosition()I
    .locals 8

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMemoryStepCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_3

    .line 321
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->indexOf(I)I

    move-result v5

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 323
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 324
    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSelectedSettingItemPosition: position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 325
    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectedSettingItemPosition:    index = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 330
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    .line 331
    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "getSelectedSettingItemPosition: position = 0"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 332
    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSelectedSettingItemPosition:    index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->indexOf(I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTopPadding()I
    .locals 3

    .line 378
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mTopPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0701be

    .line 379
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mTopPadding:I

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v0, v1, :cond_0

    .line 385
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 387
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mTopPadding:I

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mTopPadding:I

    .line 390
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mTopPadding:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected indexOf(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    .line 359
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method should be overwritten for your use case"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onAutoCheckedChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getAutoSettingItemPosition()I

    move-result p1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getDefaultSettingItemPosition()I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public refresh()V
    .locals 6

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getSelectedSettingItemPosition()I

    move-result v0

    .line 192
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 193
    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh: position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getAutoSettingItemPosition()I

    move-result v0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getDefaultSettingItemPosition()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getBackgroundImageResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowMaxMinValue:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 217
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotation(F)V

    :cond_1
    return-void
.end method

.method protected update(F)V
    .locals 5

    .line 236
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTopPadding()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMemoryStepSize()F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 239
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMemoryStepCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->updateIndicator(IZ)V

    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->refresh()V

    return-void
.end method

.method protected updateIndicator(IZ)V
    .locals 7

    .line 246
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIndicator: position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-ltz p1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMemoryStepCount()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getMemoryStepSize()F

    move-result v4

    int-to-float v5, p1

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTopPadding()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    .line 251
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 250
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 252
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 253
    new-array v0, v1, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIndicator: setY = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getIndicatorImageResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getIndicatorContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mShowAutoSettingItemAsButton:Z

    if-eqz v0, :cond_4

    .line 260
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getAutoSettingItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getAutoButtonContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$ViewHolder;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getAutoButtonContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    :cond_4
    :goto_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mCurrentPosition:I

    if-eq p1, v0, :cond_5

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->updateSelectedSettingItem(IZ)V

    .line 272
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->mCurrentPosition:I

    :cond_5
    return-void
.end method

.method protected updateSelectedSettingItem(IZ)V
    .locals 7

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 300
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->indexOf(I)I

    move-result v0

    .line 303
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 304
    new-array v1, v3, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSelectedSettingItem: position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 305
    new-array p1, v3, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSelectedSettingItem:    index = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 308
    invoke-interface {p1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    if-eqz p2, :cond_3

    .line 310
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_2

    .line 311
    move-object p2, p1

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 312
    new-array v0, v3, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->getTag()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSelectedSettingItem: apply "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 314
    :cond_2
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->select()V

    :cond_3
    return-void
.end method
