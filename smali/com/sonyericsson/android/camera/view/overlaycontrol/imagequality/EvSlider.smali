.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/EvSlider;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;
.source "EvSlider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V

    return-void
.end method


# virtual methods
.method protected getBackgroundImageResource(I)I
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const p0, 0x7f080154

    return p0

    :cond_0
    const p0, 0x7f080155

    return p0
.end method

.method protected getDefaultSettingItemPosition()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/EvSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ordinal()I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method protected getMaxValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getMinValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
