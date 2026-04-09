.class synthetic Lcom/sonyericsson/android/camera/parameter/Parameters$1;
.super Ljava/lang/Object;
.source "Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 793
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x8

    aput v9, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x9

    aput v9, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xa

    aput v9, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xb

    aput v9, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xc

    aput v9, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xd

    aput v9, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xe

    aput v9, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0xf

    aput v9, v7, v8
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x10

    aput v9, v7, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x11

    aput v9, v7, v8
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x12

    aput v9, v7, v8
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x13

    aput v9, v7, v8
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x14

    aput v9, v7, v8
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x15

    aput v9, v7, v8
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x16

    aput v9, v7, v8
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x17

    aput v9, v7, v8
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x18

    aput v9, v7, v8
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x19

    aput v9, v7, v8
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x1a

    aput v9, v7, v8
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x1b

    aput v9, v7, v8
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x1c

    aput v9, v7, v8
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x1d

    aput v9, v7, v8
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x1e

    aput v9, v7, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x1f

    aput v9, v7, v8
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x20

    aput v9, v7, v8
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x21

    aput v9, v7, v8
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x22

    aput v9, v7, v8
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x23

    aput v9, v7, v8
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x24

    aput v9, v7, v8
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x25

    aput v9, v7, v8
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x26

    aput v9, v7, v8
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x27

    aput v9, v7, v8
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x28

    aput v9, v7, v8
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x29

    aput v9, v7, v8
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x2a

    aput v9, v7, v8
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v8

    const/16 v9, 0x2b

    aput v9, v7, v8
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 84
    :catch_2a
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_2b
    sget-object v7, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    return-void
.end method
