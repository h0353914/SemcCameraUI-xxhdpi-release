.class public final enum Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
.super Ljava/lang/Enum;
.source "ExternalCameraAppSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;,
        Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum AUTO_PHOTO_PREVIEW:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum DATA_STORAGE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum DISTORTION_CORRECTION_MODE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum FLASH:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum FRONT_ANGLE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum GRID_LINES:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field private static final INTENT_KEY_PREFIX:Ljava/lang/String; = "com.sonyericsson.android.camera.extra."

.field public static final enum SAVE_LOCATION:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum SOUND:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

.field public static final enum USE_VOLUME_KEY_AS:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;


# instance fields
.field public final intentKey:Ljava/lang/String;

.field public final key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private final mIntentToUserSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingCategory:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    new-instance v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v1, "FLASH"

    const-string v3, "FLASH_MODE"

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 30
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    const-string v2, "auto"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 31
    invoke-virtual {v0, v2, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    const-string v2, "fill_flash"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 32
    invoke-virtual {v0, v2, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    const-string v2, "flashlight"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 33
    invoke-virtual {v0, v2, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    const-string v2, "red_eye"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 34
    invoke-virtual {v0, v2, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v0

    const-string v2, "off"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 35
    invoke-virtual {v0, v2, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v7, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->FLASH:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v9, "FRONT_ANGLE"

    const-string v11, "FRONT_ANGLE"

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 38
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v2, "default"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v2, "cropped"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v14

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v2, "GRID_LINES"

    const-string v4, "GRID_LINES"

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 43
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    .line 44
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    .line 45
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v7

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->GRID_LINES:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v9, "SOUND"

    const-string v11, "SOUND"

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 48
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v14

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->SOUND:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v2, "SAVE_LOCATION"

    const-string v4, "SAVE_LOCATION"

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 53
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 54
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 55
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v7

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v9, "DATA_STORAGE"

    const-string v11, "DATA_STORAGE"

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 58
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v2, "sdcard"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 59
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v2, "internal"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 60
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v14

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DATA_STORAGE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v2, "USE_VOLUME_KEY_AS"

    const-string v4, "USE_VOLUME_KEY_AS"

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 63
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v3, "shutter"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 64
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v3, "volume"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 65
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v3, "zoom"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 66
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v7

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->USE_VOLUME_KEY_AS:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v9, "AUTO_PHOTO_PREVIEW"

    const-string v11, "AUTO_PHOTO_PREVIEW"

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 69
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v2, "off"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v2, "on"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 71
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    const-string v2, "only_front_camera"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v14

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->AUTO_PHOTO_PREVIEW:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const-string v2, "DISTORTION_CORRECTION_MODE"

    const-string v4, "DISTORTION_CORRECTION_MODE"

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 76
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 77
    invoke-virtual {v1, v3, v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    move-result-object v7

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DISTORTION_CORRECTION_MODE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/16 v0, 0x9

    .line 27
    new-array v0, v0, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->FLASH:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->GRID_LINES:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->SOUND:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DATA_STORAGE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->USE_VOLUME_KEY_AS:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->AUTO_PHOTO_PREVIEW:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DISTORTION_CORRECTION_MODE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->$VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;",
            "Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p4, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.sonyericsson.android.camera.extra."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mSettingCategory:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 89
    iget-object p1, p6, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->entries:Ljava/util/Map;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mIntentToUserSetting:Ljava/util/Map;

    return-void
.end method

.method private static items()Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;
    .locals 2

    .line 153
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;-><init>(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$1;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
    .locals 1

    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->$VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    return-object v0
.end method


# virtual methods
.method public isShared(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;)Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mSettingCategory:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->isAccepted(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;)Z

    move-result p0

    return p0
.end method

.method public toIntentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/Object;
    .locals 2

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mIntentToUserSetting:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public toValue(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->mIntentToUserSetting:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method
