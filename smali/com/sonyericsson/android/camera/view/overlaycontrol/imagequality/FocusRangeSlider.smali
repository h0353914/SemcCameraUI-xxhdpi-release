.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;
.source "FocusRangeSlider.java"


# instance fields
.field private mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V

    .line 28
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method


# virtual methods
.method protected getBackgroundImageResource(I)I
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const p0, 0x7f080156

    return p0

    :cond_0
    const p0, 0x7f080157

    return p0
.end method

.method protected getDefaultSettingItemPosition()I
    .locals 0

    .line 97
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->getThreshold()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method protected getIndicatorContentDescription(I)Ljava/lang/String;
    .locals 1

    .line 68
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->getFocusRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    float-to-int p1, p1

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f006d

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMaxValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getMemoryStepCount()I
    .locals 0

    const/16 p0, 0x63

    return p0
.end method

.method protected getMinValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSelectedSettingItemPosition()I
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getAutoSettingItemPosition()I

    move-result p0

    return p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->getInt()I

    move-result p0

    return p0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 47
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->getInt()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected indexOf(I)I
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getAutoSettingItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 103
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result p0

    return p0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getDefaultSettingItemPosition()I

    move-result p0

    if-ne p1, p0, :cond_1

    .line 105
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result p0

    return p0

    .line 107
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result p0

    return p0
.end method

.method protected updateSelectedSettingItem(IZ)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getAutoSettingItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;->getDefaultSettingItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->setInt(I)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->setInt(I)V

    .line 63
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->updateSelectedSettingItem(IZ)V

    return-void
.end method
