.class Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;
.super Ljava/lang/Object;
.source "CameraSettingResource.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAddedDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 1

    .line 92
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f0f02b7

    return p0
.end method

.method static getCommonTitleResId()I
    .locals 1

    const v0, 0x7f0f03ad

    return v0
.end method

.method static getDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 1

    .line 56
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const p0, 0x7f0f04b8

    return p0

    :pswitch_1
    const p0, 0x7f0f046e

    return p0

    :pswitch_2
    const p0, 0x7f0f00e7

    return p0

    :pswitch_3
    const p0, 0x7f0f0328

    return p0

    :pswitch_4
    const p0, 0x7f0f045e

    return p0

    :pswitch_5
    const p0, 0x7f0f0228

    return p0

    .line 68
    :pswitch_6
    invoke-static {}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideBarSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f0412

    return p0

    :cond_0
    const p0, 0x7f0f0413

    return p0

    :pswitch_7
    const p0, 0x7f0f0473

    return p0

    :pswitch_8
    const p0, 0x7f0f0150

    return p0

    :pswitch_9
    const p0, 0x7f0f00bb

    return p0

    :pswitch_a
    const p0, 0x7f0f02b8

    return p0

    :pswitch_b
    const p0, 0x7f0f0325

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getImageResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 1

    .line 156
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f0802b6

    return p0

    :cond_1
    const p0, 0x7f080232

    return p0

    :cond_2
    const p0, 0x7f08031d

    return p0

    :cond_3
    const p0, 0x7f080279

    return p0

    :cond_4
    const p0, 0x7f080253

    return p0
.end method

.method static getInformationResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 2

    .line 136
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xd

    const v1, 0x7f0f0362

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method static getModeTitleResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I
    .locals 2

    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const p0, 0x7f0f03b6

    return p0

    :pswitch_1
    const p0, 0x7f0f03ae

    return p0

    :pswitch_2
    const p0, 0x7f0f03b2

    return p0

    :pswitch_3
    const p0, 0x7f0f03b0

    return p0

    :pswitch_4
    const p0, 0x7f0f03b9

    return p0

    :pswitch_5
    const p0, 0x7f0f03af

    return p0

    .line 25
    :pswitch_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getZoomStep()I

    move-result p0

    const/16 v0, 0xa8

    if-ge p0, v0, :cond_0

    const p0, 0x7f0f03ba

    return p0

    :cond_0
    const/16 v0, 0x198

    if-lt p0, v0, :cond_1

    const p0, 0x7f0f03b7

    return p0

    :cond_1
    const p0, 0x7f0f03b5

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getSubDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)I
    .locals 3

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-eqz p0, :cond_6

    .line 118
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f0f0330

    return p0

    :cond_2
    const p0, 0x7f0f0331

    return p0

    .line 104
    :cond_3
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-eqz p0, :cond_6

    .line 105
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    goto :goto_0

    :cond_4
    const p0, 0x7f0f022a

    return p0

    :cond_5
    const p0, 0x7f0f0229

    return p0

    :cond_6
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method static isExclusiveInformationId(I)Z
    .locals 1

    const v0, 0x7f0f0362

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
