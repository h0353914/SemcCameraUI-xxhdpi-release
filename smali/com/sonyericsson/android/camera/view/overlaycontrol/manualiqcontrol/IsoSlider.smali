.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;
.source "IsoSlider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V

    return-void
.end method


# virtual methods
.method public final getBackgroundImageResource(I)I
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const p0, 0x7f080190

    return p0

    :cond_0
    const p0, 0x7f080191

    return p0
.end method

.method public final getDefaultSettingItemPosition()I
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIndexOfDefault()I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method protected getMaxValue()Ljava/lang/String;
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 45
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v2

    if-lez v2, :cond_1

    if-le v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMinValue()Ljava/lang/String;
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 64
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v2

    if-lez v2, :cond_1

    if-ge v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
