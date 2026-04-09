.class synthetic Lcom/sonyericsson/android/camera/CameraActivity$12;
.super Ljava/lang/Object;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3620
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 3311
    :catch_2
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->values()[Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    :try_start_3
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 3264
    :catch_4
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->values()[Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    :try_start_5
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v3, 0x4

    :try_start_8
    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v4, 0x5

    :try_start_9
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v6, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 2323
    :catch_9
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_a
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 2309
    :catch_10
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

    :try_start_11
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 1343
    :catch_11
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_12
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
