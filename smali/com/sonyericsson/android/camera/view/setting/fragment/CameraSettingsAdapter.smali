.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CameraSettingsAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSettingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->setSettingItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    if-nez p4, :cond_0

    .line 108
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const p5, 0x7f0c0050

    .line 109
    invoke-virtual {p4, p5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 112
    :cond_0
    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object p1

    .line 113
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    const p2, 0x7f090201

    .line 115
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 116
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object p5

    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/4 v1, 0x0

    if-ne p5, v0, :cond_1

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p5

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 117
    invoke-virtual {p2, p5, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f0701f4

    .line 121
    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 122
    invoke-virtual {p2, v0, v2, p5, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    const p2, 0x7f0901ff

    .line 126
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 127
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getTitleResId()I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getValueText()Ljava/lang/String;

    move-result-object p2

    const p5, 0x7f0901d4

    .line 131
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 132
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/16 v3, 0x8

    if-eq v0, v2, :cond_2

    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p5, 0x7f0701f6

    .line 139
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 138
    invoke-virtual {p4, p2}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p5, 0x7f0701f7

    .line 144
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 143
    invoke-virtual {p4, p2}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_1
    const p2, 0x7f0901e0

    .line 147
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 148
    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f060084

    invoke-virtual {p5, v0, p3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 150
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p5, 0x7f060086

    invoke-virtual {p0, p5, p3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 152
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object p0

    sget-object p3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    if-ne p0, p3, :cond_4

    .line 153
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    :cond_3
    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 158
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {p2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 163
    :goto_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getAdditionalTextForAccessibility()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p3, :cond_0

    .line 82
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c004e

    const/4 p4, 0x0

    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x7f0901ff

    .line 86
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 87
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCategoryNameResId()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    const p4, 0x7f060072

    invoke-virtual {p0, p4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 90
    invoke-virtual {p3, p0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    const p0, 0x7f090086

    .line 92
    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 97
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-object p3
.end method

.method public getSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 182
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->getChildrenCount(I)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object v3

    .line 185
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 187
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method setSettingItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    return-void
.end method
