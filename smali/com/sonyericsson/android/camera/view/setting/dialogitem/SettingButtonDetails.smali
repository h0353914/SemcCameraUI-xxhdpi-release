.class Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.source "SettingButtonDetails.java"


# instance fields
.field private final mBackground:Landroid/view/View;

.field private final mContainer:Landroid/view/View;

.field private final mDescription:Landroid/widget/TextView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSeparator:Landroid/view/View;

.field private final mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 1

    .line 47
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 34
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mResources:Landroid/content/res/Resources;

    .line 51
    const-string p2, "layout_inflater"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c009a

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mContainer:Landroid/view/View;

    const p2, 0x7f090060

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mBackground:Landroid/view/View;

    const p2, 0x7f0901a1

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mSeparator:Landroid/view/View;

    const p2, 0x7f0901f0

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mText:Landroid/widget/TextView;

    const p2, 0x7f0900bc

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mDescription:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mContainer:Landroid/view/View;

    return-object p0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 3

    .line 63
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mBackground:Landroid/view/View;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 65
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getSubText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->mSeparator:Landroid/view/View;

    iget-boolean p1, p2, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;->bottom:Z

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
