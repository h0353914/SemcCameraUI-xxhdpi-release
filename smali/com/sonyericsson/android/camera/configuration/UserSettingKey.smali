.class public final enum Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
.super Ljava/lang/Enum;
.source "UserSettingKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum MICROPHONE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final TAG:Ljava/lang/String; = "UserSettingKey"

.field public static final enum TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public static final enum WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;


# instance fields
.field private final mCategory:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

.field private final mIsCommon:Z

.field private mIsSaved:Z

.field private final mIsSecureSetting:Z

.field private mSelectability:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field private final mTitleTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 28
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v1, "AUTO_REVIEW"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v7, 0x7f0f01fc

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "VIDEO_AUTO_REVIEW"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v16, 0x7f0f0224

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "CAPTURING_MODE"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f0f00d6

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "DESTINATION_TO_SAVE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v11, 0x3

    const/4 v14, 0x1

    const v16, 0x7f0f024a

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "EV"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v3, 0x4

    const v8, 0x7f0f0153

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "FACING"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v14, 0x0

    const v16, 0x7f0f00c1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "SETTING_MENU"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v8, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "FAST_CAPTURE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/4 v11, 0x7

    const/4 v12, 0x1

    const/4 v14, 0x1

    const v16, 0x7f0f01c9

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "FLASH"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x1

    const v8, 0x7f0f0170

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "DISPLAY_FLASH"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x9

    const v16, 0x7f0f0170

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "FOCUS_MODE"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0xa

    const/4 v6, 0x0

    const v8, 0x7f0f0179

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "GEO_TAG"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0xb

    const v16, 0x7f0f0180

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "HDR"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0xc

    const v8, 0x7f0f018e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "ISO"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0xd

    const/4 v14, 0x0

    const v16, 0x7f0f01c7

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "METERING"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0xe

    const v8, 0x7f0f0211

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 120
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "MICROPHONE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0xf

    const v16, 0x7f0f01dc

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 126
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "PHOTO_LIGHT"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x10

    const/4 v6, 0x1

    const v8, 0x7f0f0171

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 132
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "RESOLUTION"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x11

    const v16, 0x7f0f01b6

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 138
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "ASPECT_RATIO"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x12

    const/4 v6, 0x0

    const v8, 0x7f0f00a9

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 144
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "SELF_TIMER"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x13

    const v16, 0x7f0f0281

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 150
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "SHUTTER_SOUND"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x14

    const/4 v6, 0x1

    const v8, 0x7f0f00c0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 156
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "SMILE_CAPTURE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x15

    const/4 v12, 0x0

    const v16, 0x7f0f02b4

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 162
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "CAMERA_KEY"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x16

    const v8, 0x7f0f00bf

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 168
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "SOFT_SKIN"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x17

    const/4 v12, 0x1

    const v16, 0x7f0f02b7

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 174
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "VIDEO_STABILIZER"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x18

    const/4 v6, 0x0

    const v8, 0x7f0f02ba

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 181
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "SUPER_RESOLUTION"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x19

    const/4 v12, 0x0

    const/16 v16, -0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 187
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "TOUCH_CAPTURE"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x1a

    const/4 v6, 0x1

    const v8, 0x7f0f02d2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "VIDEO_SELF_TIMER"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x1b

    const/4 v12, 0x1

    const v16, 0x7f0f0281

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 200
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "VIDEO_SIZE"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x1c

    const/4 v6, 0x0

    const v8, 0x7f0f0308

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 206
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "VIDEO_HDR"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x1d

    const v16, 0x7f0f02ef

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 213
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "VIDEO_SMILE_CAPTURE"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const v8, 0x7f0f0309

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 219
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "VIDEO_SHUTTER_TRIGGER"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x1f

    const v16, 0x7f0f0304

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 225
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "VOLUME_KEY"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v6, 0x1

    const v8, 0x7f0f030c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 231
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "WHITE_BALANCE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x21

    const v16, 0x7f0f0314

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 238
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "SEMI_AUTO"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 244
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "GRID_LINE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x23

    const/4 v14, 0x1

    const v16, 0x7f0f0189

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 250
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "SIDE_SENSE"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x24

    const/4 v4, 0x1

    const/4 v6, 0x1

    const v8, 0x7f0f0293

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 256
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "HELP_GUIDE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x25

    const/4 v12, 0x0

    const v16, 0x7f0f0190

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 262
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "RESET_SETTINGS"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x26

    const/4 v4, 0x0

    const v8, 0x7f0f0231

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 268
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "VIDEO_CODEC"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x27

    const/4 v12, 0x1

    const/4 v14, 0x0

    const v16, 0x7f0f02f4

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 274
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "OBJECT_TRACKING"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x28

    const/4 v4, 0x1

    const/4 v6, 0x0

    const v8, 0x7f0f0177

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 280
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "SHUTTER_TRIGGER"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x29

    const v16, 0x7f0f0289

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 286
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "SHUTTER_SPEED"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x2a

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 292
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "FOCUS_RANGE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x2b

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 298
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "TOUCH_INTENTION"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x2c

    const v8, 0x7f0f02d6

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 304
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "PREDICTIVE_CAPTURE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x2d

    const v16, 0x7f0f0215

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 310
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "SLOW_MOTION"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x2e

    const v8, 0x7f0f02ae

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 316
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "FRONT_ANGLE"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x2f

    const/4 v14, 0x1

    const/16 v16, -0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 322
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "FUSION_MODE"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x30

    const v8, 0x7f0f017f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 328
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v10, "DISTORTION_CORRECTION"

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v11, 0x31

    const v16, 0x7f0f01ca

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 334
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "PREDICTIVE_LAUNCH"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const/16 v3, 0x32

    const/4 v5, 0x1

    const/4 v6, 0x1

    const v8, 0x7f0f0220

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;-><init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v0, 0x33

    .line 27
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lcom/sonyericsson/android/camera/configuration/ParameterCategory;",
            "I)V"
        }
    .end annotation

    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 361
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mIsSaved:Z

    .line 362
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mIsSecureSetting:Z

    .line 363
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mIsCommon:Z

    .line 364
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mCategory:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    .line 365
    iput p7, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mTitleTextId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 1

    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mCategory:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    return-object p0
.end method

.method public getRestrictMessageDialogId(Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;
    .locals 3

    .line 439
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->DLG_INVALID:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 441
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 442
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 443
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 483
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESTRICT_STEADYSHOT_VIDEO_RESOLUTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 474
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, p0, :cond_0

    .line 475
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->VIDEO_HDR_RESTRICTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 476
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, p0, :cond_1

    .line 477
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESTRICT_SLOW_VIDEO_RESOLUTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 479
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESTRICT_STEADYSHOT_VIDEO_RESOLUTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 465
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, p0, :cond_2

    .line 466
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->VIDEO_HDR_RESTRICTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 468
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESTRICT_STEADYSHOT_VIDEO_RESOLUTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 469
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, p0, :cond_6

    .line 470
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESTRICT_PHOTO_RESOLUTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 458
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, p0, :cond_4

    .line 459
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->VIDEO_HDR_RESTRICTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 460
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 461
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESTRICT_STEADYSHOT_VIDEO_RESOLUTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 451
    :pswitch_4
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, p0, :cond_5

    .line 452
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->VIDEO_HDR_RESTRICTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    goto :goto_0

    .line 454
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESTRICT_STEADYSHOT_VIDEO_RESOLUTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    :cond_6
    :goto_0
    :pswitch_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mSelectability:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0
.end method

.method public getTitleTextId()I
    .locals 2

    .line 409
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 420
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mTitleTextId:I

    return p0

    .line 417
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getParameterKeyTitleText()I

    move-result p0

    return p0

    .line 414
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getParameterKeyTitleTextId()I

    move-result p0

    return p0

    .line 411
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getParameterKeyTitleTextId()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCommon()Z
    .locals 0

    .line 401
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mIsCommon:Z

    return p0
.end method

.method public isInvalid()Z
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSaved()Z
    .locals 0

    .line 374
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mIsSaved:Z

    return p0
.end method

.method public isSecureSetting()Z
    .locals 0

    .line 392
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mIsSecureSetting:Z

    return p0
.end method

.method public isSelectable()Z
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSaved(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mIsSaved:Z

    return-void
.end method

.method public setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->mSelectability:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-void
.end method
