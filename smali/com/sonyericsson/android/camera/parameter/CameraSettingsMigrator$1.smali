.class final Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;
.super Ljava/util/HashMap;
.source "CameraSettingsMigrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
        "Ljava/util/List<",
        "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 12

    .line 98
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v11, 0x9

    aput-object v2, v1, v11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v11, 0xa

    aput-object v2, v1, v11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v11, 0xb

    aput-object v2, v1, v11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v11, 0xc

    aput-object v2, v1, v11

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v1, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v1, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v1, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v1, v7, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v1, v6, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v1, v5, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
