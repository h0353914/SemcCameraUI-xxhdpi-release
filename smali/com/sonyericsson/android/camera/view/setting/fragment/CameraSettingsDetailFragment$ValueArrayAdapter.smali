.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CameraSettingsDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0c004c

    const v1, 0x7f090090

    .line 428
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 429
    iput p3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c004c

    .line 437
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 440
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    if-nez p3, :cond_1

    .line 443
    const-string p0, "lost CameraSettingValueItem"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object p2

    .line 446
    :cond_1
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const v3, 0x7f090090

    .line 449
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 450
    iget v4, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->mSelectedIndex:I

    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 451
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    const p1, 0x7f0901ff

    .line 454
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 455
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getNameResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 456
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const p1, 0x7f0901d4

    .line 459
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 460
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getSubDescriptionText()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 462
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0701f6

    .line 467
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 466
    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    .line 469
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0701f7

    .line 472
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 471
    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 475
    :goto_2
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getAdditionalTextForAccessibility()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
