.class Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.source "SettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;,
        Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;
    }
.end annotation


# static fields
.field private static final DISABLED_FILTER:I = 0x7f060035


# instance fields
.field private final mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHolder(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOffItem(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOffItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOnItem(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateContentDescription(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->updateContentDescription(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 2

    .line 95
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 41
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 64
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener-IA;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 97
    const-string p2, "layout_inflater"

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 100
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    invoke-direct {p2, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder-IA;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    const v1, 0x7f0c009b

    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 103
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    .line 105
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const p1, 0x7f090060

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iput-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    .line 106
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const p1, 0x7f0900eb

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 107
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const p1, 0x7f0901f0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    .line 108
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const p1, 0x7f09021c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    .line 109
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    const p1, 0x7f0901da

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mSwitch:Landroid/widget/FrameLayout;

    .line 111
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/high16 p1, 0x41800000    # 16.0f

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private changeToButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 193
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 195
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setSelected(Z)V

    .line 197
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

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 202
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 203
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setValue()V

    .line 208
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0701d5

    goto :goto_0

    :cond_0
    const p1, 0x7f0701d1

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0701d4

    goto :goto_0

    :cond_2
    const p1, 0x7f0701d0

    .line 226
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
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

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 243
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 248
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0701d3

    goto :goto_0

    :cond_0
    const p1, 0x7f0701d2

    .line 255
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 258
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->updateContentDescription(Z)V

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setChecked(Z)V

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mSwitch:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private changeToRestrictFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 271
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 272
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getSelectedItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    if-nez p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    const p2, 0x7f0f0357

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setValue()V

    .line 280
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setSelected(Z)V

    .line 284
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

    .line 233
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setText()V

    .line 234
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setImage()V

    .line 236
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setSelected(Z)V

    .line 238
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

    .line 292
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

    .line 288
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

    .line 163
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

    .line 164
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

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private setImage()V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getIconId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 323
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

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setTextColorGrayOrNot()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06006f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
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

    .line 328
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getSelectedItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    .line 335
    instance-of v2, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 336
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getValueText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateContentDescription(Z)V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string v1, " "

    if-eqz p1, :cond_0

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOnItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getOffItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object p0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setClickable(Z)V

    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getSelectability()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->RESTRICTED:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    if-eq v0, v1, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToCategorySwitchFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToCategoryButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToValueButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    goto :goto_0

    .line 122
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToButtonFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 137
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setTextColorGrayOrNot()V

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->setIconColorGrayOrNot()V

    goto :goto_1

    .line 142
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->changeToRestrictFormat(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 147
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result p1

    const/16 p2, 0x15

    const/16 v0, 0x13

    if-eqz p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 152
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->mHolder:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_2
    return-void
.end method
