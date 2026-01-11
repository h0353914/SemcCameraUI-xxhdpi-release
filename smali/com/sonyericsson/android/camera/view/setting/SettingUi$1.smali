.class synthetic Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;
.super Ljava/lang/Object;
.source "SettingUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$launcher$ApplicationLauncher$MonochromeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 731
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    :catch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->values()[Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$controller$launcher$ApplicationLauncher$MonochromeType:[I

    :try_start_3
    sget-object v4, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_PHOTO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$controller$launcher$ApplicationLauncher$MonochromeType:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_VIDEO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 131
    :catch_4
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_5
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRAME_LINES:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method
