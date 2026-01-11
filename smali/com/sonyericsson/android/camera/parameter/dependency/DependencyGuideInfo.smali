.class Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;
.super Ljava/lang/Object;
.source "DependencyGuideInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;,
        Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;,
        Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    }
.end annotation


# instance fields
.field private final mDependencyGuideInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mOneshotDependencyGuideInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 13

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mOneshotDependencyGuideInfoMap:Ljava/util/Map;

    .line 35
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 37
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    filled-new-array {v3}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 36
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v6, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 40
    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v5

    filled-new-array {v5}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v5

    .line 39
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v3

    filled-new-array {v2, v3}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    .line 35
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v5, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 46
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    filled-new-array {v3}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 45
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v6, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 49
    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v5

    filled-new-array {v5}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v5

    .line 48
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 52
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    filled-new-array {v6}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    .line 51
    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    .line 44
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v5, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 57
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v6, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 58
    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v5

    filled-new-array {v3, v5}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 56
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v6, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 61
    invoke-direct {p0, v3, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 62
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    filled-new-array {v3, v6}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 60
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 65
    invoke-direct {p0, v3, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v8, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 66
    invoke-direct {p0, v7, v8}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    filled-new-array {v3, v7}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 64
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v8, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 69
    invoke-direct {p0, v3, v8}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 70
    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v8

    filled-new-array {v3, v8}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 68
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 75
    invoke-direct {p0, v3, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 76
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    filled-new-array {v3, v9}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 72
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 79
    invoke-direct {p0, v3, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    filled-new-array {v3}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 78
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v10

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v11, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 82
    invoke-direct {p0, v3, v11}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    filled-new-array {v3}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v12, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 85
    invoke-direct {p0, v3, v12}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    filled-new-array {v3}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 84
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v12

    filled-new-array/range {v5 .. v12}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    .line 55
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v4, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 91
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    filled-new-array {v3}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v3

    .line 90
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    filled-new-array {v2}, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    .line 89
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    .locals 0

    .line 134
    new-instance p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;-><init>([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)V

    return-object p0
.end method

.method private varargs settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;
    .locals 0

    .line 144
    new-instance p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;-><init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-object p0
.end method

.method private varargs settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;
    .locals 0

    .line 139
    new-instance p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)V

    return-object p0
.end method


# virtual methods
.method getModeGroup(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    .locals 0

    if-eqz p2, :cond_0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mOneshotDependencyGuideInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    return-object p0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    return-object p0
.end method
