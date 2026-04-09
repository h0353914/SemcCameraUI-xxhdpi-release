.class Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.source "SettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;,
        Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DISABLED_FILTER:I = 0x7f06003a


# instance fields
.field private final mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

.field private final mIsDeviceInSecurityLock:Z

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Z)V
    .locals 2

    .line 97
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 43
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 66
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const-string p2, "layout_inflater"

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 102
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    invoke-direct {p2, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    .line 104
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    const v1, 0x7f0c0087

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    .line 107
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const v0, 0x7f09003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    .line 108
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const v0, 0x7f0900a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const v0, 0x7f090188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const v0, 0x7f0901b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const v0, 0x7f09017e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mSwitch:Landroid/widget/FrameLayout;

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mIsDeviceInSecurityLock:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOffItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->updateContentDescription(Z)V

    return-void
.end method

.method private changeToButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setSelected(Z)V

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private changeToCategoryButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setValue()V

    .line 212
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0701a9

    goto :goto_0

    :cond_0
    const p1, 0x7f0701a5

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0701a8

    goto :goto_0

    :cond_2
    const p1, 0x7f0701a4

    .line 230
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private changeToCategorySwitchFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 247
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 252
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0701a7

    goto :goto_0

    :cond_0
    const p1, 0x7f0701a6

    .line 259
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->updateContentDescription(Z)V

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setChecked(Z)V

    .line 271
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mIsDeviceInSecurityLock:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 272
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 276
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 278
    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mSwitch:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private changeToRestrictFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getSelectedItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    if-nez p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    const p2, 0x7f0f0236

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setValue()V

    .line 292
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setSelected(Z)V

    .line 296
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private changeToValueButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 240
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setSelected(Z)V

    .line 242
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getOffItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    return-object p0
.end method

.method private getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    return-object p0
.end method

.method private getSelectedItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 168
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setIconColorGrayOrNot()V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private setImage()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getIconId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setText()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setTextColorGrayOrNot()V
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06006f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060070

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private setValue()V
    .locals 4

    .line 340
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getSelectedItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    .line 347
    instance-of v2, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 348
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getValueText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateContentDescription(Z)V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOffItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object p0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setClickable(Z)V

    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getSelectability()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->RESTRICTED:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    if-eq v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToCategorySwitchFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToCategoryButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToValueButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    goto :goto_0

    .line 126
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setTextColorGrayOrNot()V

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setIconColorGrayOrNot()V

    goto :goto_1

    .line 146
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToRestrictFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 151
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result p1

    const/16 p2, 0x13

    const/16 v0, 0x15

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
