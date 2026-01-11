.class synthetic Lcom/sonyericsson/android/camera/controller/StateMachine$22;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 11437
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 10060
    :catch_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_2
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 10020
    :catch_5
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    :try_start_6
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 9064
    :catch_8
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    :try_start_9
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/4 v4, 0x5

    :try_start_d
    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/4 v5, 0x6

    :try_start_e
    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/4 v6, 0x7

    :try_start_f
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 8798
    :catch_f
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    :try_start_10
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    const/16 v7, 0x8

    :try_start_17
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    const/16 v8, 0x9

    :try_start_18
    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    const/16 v9, 0xa

    :try_start_19
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    const/16 v10, 0xb

    :try_start_1a
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    const/16 v11, 0xc

    :try_start_1b
    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    const/16 v12, 0xd

    :try_start_1c
    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    const/16 v13, 0xe

    :try_start_1d
    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    const/16 v14, 0xf

    :try_start_1e
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    const/16 v15, 0x10

    :try_start_1f
    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 8815
    :catch_1f
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_20
    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v17

    aput v1, v15, v17
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v17

    aput v0, v15, v17
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v17

    aput v2, v15, v17
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    .line 8418
    :catch_22
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    :try_start_23
    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v1, v15, v17
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v0, v15, v17
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_TIMEOUT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v2, v15, v17
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v3, v15, v17
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v4, v15, v17
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v5, v15, v17
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v6, v15, v17
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v7, v15, v17
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v8, v15, v17
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LIMIT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v9, v15, v17
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v10, v15, v17
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BATTERY_LEVEL_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v15

    aput v11, v10, v15
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v12, v10, v11
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v13, v10, v11
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v14, v10, v11
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x10

    aput v12, v10, v11
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x11

    aput v12, v10, v11
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x12

    aput v12, v10, v11
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x13

    aput v12, v10, v11
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAPTURE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x14

    aput v12, v10, v11
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x15

    aput v12, v10, v11
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_BURST_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x16

    aput v12, v10, v11
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x17

    aput v12, v10, v11
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x18

    aput v12, v10, v11
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x19

    aput v12, v10, v11
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1a

    aput v12, v10, v11
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1b

    aput v12, v10, v11
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1c

    aput v12, v10, v11
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1d

    aput v12, v10, v11
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1e

    aput v12, v10, v11
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1f

    aput v12, v10, v11
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x20

    aput v12, v10, v11
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x21

    aput v12, v10, v11
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x22

    aput v12, v10, v11
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x23

    aput v12, v10, v11
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x24

    aput v12, v10, v11
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x25

    aput v12, v10, v11
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x26

    aput v12, v10, v11
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x27

    aput v12, v10, v11
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_START_WAIT_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x28

    aput v12, v10, v11
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x29

    aput v12, v10, v11
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_SELECTED_FACE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2a

    aput v12, v10, v11
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_SELECTED_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2b

    aput v12, v10, v11
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DESELECT_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2c

    aput v12, v10, v11
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2d

    aput v12, v10, v11
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2e

    aput v12, v10, v11
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2f

    aput v12, v10, v11
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x30

    aput v12, v10, v11
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_ONE_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x31

    aput v12, v10, v11
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x32

    aput v12, v10, v11
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SWITCH_CAMERA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x33

    aput v12, v10, v11
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x34

    aput v12, v10, v11
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_ENABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x35

    aput v12, v10, v11
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_DISABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x36

    aput v12, v10, v11
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AMBER_BLUE_COLOR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x37

    aput v12, v10, v11
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BRIGHTNESS_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x38

    aput v12, v10, v11
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_ENABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x39

    aput v12, v10, v11
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_DISABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3a

    aput v12, v10, v11
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_STRENGTH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3b

    aput v12, v10, v11
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3c

    aput v12, v10, v11
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3d

    aput v12, v10, v11
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3e

    aput v12, v10, v11
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3f

    aput v12, v10, v11
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING_SLOW_MOTION_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x40

    aput v12, v10, v11
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SLOW_MOTION_FEEDBACK_ANIMATION_END:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x41

    aput v12, v10, v11
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_HIGH_FRAME_RATE_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x42

    aput v12, v10, v11
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x43

    aput v12, v10, v11
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x44

    aput v12, v10, v11
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x45

    aput v12, v10, v11
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x46

    aput v12, v10, v11
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x47

    aput v12, v10, v11
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x48

    aput v12, v10, v11
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x49

    aput v12, v10, v11
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4a

    aput v12, v10, v11
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4b

    aput v12, v10, v11
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4c

    aput v12, v10, v11
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4d

    aput v12, v10, v11
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4e

    aput v12, v10, v11
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4f

    aput v12, v10, v11
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x50

    aput v12, v10, v11
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    :try_start_73
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_FUSION_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x51

    aput v12, v10, v11
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    :catch_73
    :try_start_74
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_READY_STATE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x52

    aput v12, v10, v11
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    :catch_74
    :try_start_75
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_CAPTURING_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x53

    aput v12, v10, v11
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    :catch_75
    :try_start_76
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x54

    aput v12, v10, v11
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    :catch_76
    :try_start_77
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x55

    aput v12, v10, v11
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    :catch_77
    :try_start_78
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x56

    aput v12, v10, v11
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    :catch_78
    :try_start_79
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SESSION_CONFIGURED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x57

    aput v12, v10, v11
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    :catch_79
    :try_start_7a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RESOLUTION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x58

    aput v12, v10, v11
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_SIZE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x59

    aput v12, v10, v11
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SLOW_MOTION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x5a

    aput v12, v10, v11
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREVIEW_STEADY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x5b

    aput v12, v10, v11
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    .line 7749
    :catch_7d
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_7e
    sget-object v11, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    .line 7690
    :catch_7f
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->values()[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    :try_start_80
    sget-object v11, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    :catch_80
    :try_start_81
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v11, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    .line 6301
    :catch_81
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    :try_start_82
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    :catch_82
    :try_start_83
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    :catch_83
    :try_start_84
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    .line 5285
    :catch_84
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_85
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    :catch_85
    :try_start_86
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    :catch_86
    :try_start_87
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    :catch_87
    :try_start_88
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_88

    :catch_88
    :try_start_89
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_89

    :catch_89
    :try_start_8a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_8a

    :catch_8a
    :try_start_8b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v6, v10, v11
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_8b

    :catch_8b
    :try_start_8c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v7, v10, v11
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_8c

    .line 3509
    :catch_8c
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    :try_start_8d
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_90
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_90

    :catch_90
    :try_start_91
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_91

    :catch_91
    :try_start_92
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_92

    .line 2787
    :catch_92
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    :try_start_93
    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_93

    :catch_93
    :try_start_94
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_94

    :catch_94
    :try_start_95
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_95

    :catch_95
    :try_start_96
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_96

    :catch_96
    :try_start_97
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_97

    :catch_97
    :try_start_98
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_98

    :catch_98
    :try_start_99
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v6, v10, v11
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_99

    .line 1957
    :catch_99
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_9a
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_9a

    :catch_9a
    :try_start_9b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_9c

    .line 1109
    :catch_9c
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_9d
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9e
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v0, v1, v10
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9f
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_a0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_a0

    :catch_a0
    :try_start_a1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_a2

    :catch_a2
    :try_start_a3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a4
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_a4

    :catch_a4
    :try_start_a5
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a6
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_a6

    :catch_a6
    return-void
.end method
