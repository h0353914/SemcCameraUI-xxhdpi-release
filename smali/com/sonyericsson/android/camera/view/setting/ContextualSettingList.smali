.class public Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;
.super Ljava/lang/Object;
.source "ContextualSettingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;,
        Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;
    }
.end annotation


# instance fields
.field private final mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;


# direct methods
.method public constructor <init>(Z)V
    .locals 14

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 33
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const v1, 0x7f0f01e1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v0

    .line 48
    new-array v13, v2, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {v1, v13}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 52
    new-array v12, v12, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v2

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v3

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v9

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v10

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v11

    const v13, 0x7f0f00c4

    .line 53
    invoke-static {v13, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v12

    .line 52
    invoke-static {v12, v0}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 66
    new-array v11, v11, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v2

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v3

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v11, v10

    .line 67
    invoke-static {v13, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v9

    .line 66
    invoke-static {v9, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 79
    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v2

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v3

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v4

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v5

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v6

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISTORTION_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v7

    const v10, 0x7f0f00cd

    .line 80
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v9

    .line 79
    invoke-static {v9, v0}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 89
    new-array v9, v4, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v2

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v9, v3

    const v10, 0x7f0f00d1

    .line 90
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v9

    .line 89
    invoke-static {v9, v0}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v9, 0x7f0f009f

    if-eqz p1, :cond_0

    .line 96
    new-array p1, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, p1, v2

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, p1, v3

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, p1, v4

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, p1, v5

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, p1, v6

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, p1, v7

    .line 97
    invoke-static {v9, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object p1

    .line 96
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 106
    new-array p1, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v3

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v4

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v5

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v6

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v7

    .line 107
    invoke-static {v9, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object p1

    .line 106
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_0

    .line 116
    :cond_0
    new-array p1, v7, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, p1, v2

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, p1, v3

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, p1, v4

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, p1, v5

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, p1, v6

    .line 117
    invoke-static {v9, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object p1

    .line 116
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 125
    new-array p1, v7, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v3

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v4

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v5

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v0, p1, v6

    .line 126
    invoke-static {v9, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object p1

    .line 125
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_0
    return-void
.end method

.method private static varargs category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;
    .locals 1

    .line 188
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;-><init>(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-object v0
.end method

.method private static group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .locals 1

    .line 192
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;-><init>(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .locals 2

    .line 137
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The specified mode is not supported. mode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    :pswitch_1
    if-eqz p2, :cond_0

    .line 149
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_0
    return-object p0

    .line 145
    :pswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    :pswitch_3
    if-eqz p2, :cond_1

    .line 141
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
