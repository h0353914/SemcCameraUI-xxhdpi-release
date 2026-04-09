.class synthetic Lcom/sonyericsson/android/camera/controller/StateMachine$8;
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

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 8016
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 7979
    :catch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    :try_start_3
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 7211
    :catch_4
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    :try_start_5
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 7024
    :catch_7
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    :try_start_8
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v3, 0x4

    :try_start_b
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v4, 0x5

    :try_start_c
    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/4 v5, 0x6

    :try_start_d
    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/4 v6, 0x7

    :try_start_e
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v7, 0x8

    :try_start_f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v8, 0x9

    :try_start_10
    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v9, 0xa

    :try_start_11
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v10, 0xb

    :try_start_12
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 7041
    :catch_12
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_13
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 6692
    :catch_15
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    :try_start_16
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_TIMEOUT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v7, v11, v12
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v12

    aput v8, v11, v12
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LIMIT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v9, v8, v11
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    aput v10, v8, v9
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BATTERY_LEVEL_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xc

    aput v10, v8, v9
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xd

    aput v10, v8, v9
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    aput v10, v8, v9
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0xf

    aput v10, v8, v9
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x10

    aput v10, v8, v9
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x11

    aput v10, v8, v9
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x12

    aput v10, v8, v9
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x13

    aput v10, v8, v9
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_BURST_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x14

    aput v10, v8, v9
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x15

    aput v10, v8, v9
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x16

    aput v10, v8, v9
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x17

    aput v10, v8, v9
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x18

    aput v10, v8, v9
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x19

    aput v10, v8, v9
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x1a

    aput v10, v8, v9
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x1b

    aput v10, v8, v9
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x1c

    aput v10, v8, v9
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x1d

    aput v10, v8, v9
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x1e

    aput v10, v8, v9
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x1f

    aput v10, v8, v9
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x20

    aput v10, v8, v9
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x21

    aput v10, v8, v9
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x22

    aput v10, v8, v9
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_UNGRANTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x23

    aput v10, v8, v9
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x24

    aput v10, v8, v9
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x25

    aput v10, v8, v9
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_START_WAIT_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x26

    aput v10, v8, v9
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x27

    aput v10, v8, v9
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_SELECTED_FACE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x28

    aput v10, v8, v9
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_SELECTED_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x29

    aput v10, v8, v9
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DESELECT_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x2a

    aput v10, v8, v9
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x2b

    aput v10, v8, v9
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x2c

    aput v10, v8, v9
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x2d

    aput v10, v8, v9
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x2e

    aput v10, v8, v9
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_ONE_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x2f

    aput v10, v8, v9
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x30

    aput v10, v8, v9
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SWITCH_CAMERA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x31

    aput v10, v8, v9
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x32

    aput v10, v8, v9
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_ENABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x33

    aput v10, v8, v9
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_DISABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x34

    aput v10, v8, v9
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AMBER_BLUE_COLOR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x35

    aput v10, v8, v9
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BRIGHTNESS_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x36

    aput v10, v8, v9
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x37

    aput v10, v8, v9
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x38

    aput v10, v8, v9
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x39

    aput v10, v8, v9
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING_SLOW_MOTION_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x3a

    aput v10, v8, v9
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SLOW_MOTION_FEEDBACK_ANIMATION_END:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x3b

    aput v10, v8, v9
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_HIGH_FRAME_RATE_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x3c

    aput v10, v8, v9
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x3d

    aput v10, v8, v9
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x3e

    aput v10, v8, v9
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x3f

    aput v10, v8, v9
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x40

    aput v10, v8, v9
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x41

    aput v10, v8, v9
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x42

    aput v10, v8, v9
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x43

    aput v10, v8, v9
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x44

    aput v10, v8, v9
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x45

    aput v10, v8, v9
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x46

    aput v10, v8, v9
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x47

    aput v10, v8, v9
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x48

    aput v10, v8, v9
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x49

    aput v10, v8, v9
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_FUSION_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x4a

    aput v10, v8, v9
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_READY_STATE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x4b

    aput v10, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_CAPTURING_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x4c

    aput v10, v8, v9
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x4d

    aput v10, v8, v9
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x4e

    aput v10, v8, v9
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v9

    const/16 v10, 0x4f

    aput v10, v8, v9
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    .line 6113
    :catch_64
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_65
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    .line 6051
    :catch_66
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->values()[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    :try_start_67
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v9, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v9, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v9, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->SUCCESS:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v9, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->FAIL:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    .line 4796
    :catch_6a
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    :try_start_6b
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    .line 4026
    :catch_6d
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_6e
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    :try_start_73
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    :catch_73
    :try_start_74
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    :catch_74
    :try_start_75
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    .line 2185
    :catch_75
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    :try_start_76
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    :catch_76
    :try_start_77
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    :catch_77
    :try_start_78
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    :catch_78
    :try_start_79
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    :catch_79
    :try_start_7a
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7b
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7c
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    .line 1506
    :catch_7c
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_7d
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7e
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7f
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_80
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    :catch_80
    :try_start_81
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v8

    aput v4, v3, v8
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    :catch_81
    :try_start_82
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    :catch_82
    :try_start_83
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    :catch_83
    :try_start_84
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v7, v3, v4
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    .line 1291
    :catch_84
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_85
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    :catch_85
    :try_start_86
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    :catch_86
    :try_start_87
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    :catch_87
    return-void
.end method
