.class synthetic Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 11568
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 11310
    :catch_3
    invoke-static {}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->values()[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

    :try_start_4
    sget-object v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 11118
    :catch_5
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_6
    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v4, 0x5

    :try_start_a
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v5, 0x6

    :try_start_b
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 10592
    :catch_b
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    :try_start_c
    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/4 v6, 0x7

    :try_start_12
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 10604
    :catch_12
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    :try_start_13
    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 10462
    :catch_14
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    :try_start_15
    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 9700
    :catch_16
    invoke-static {}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->values()[Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    :try_start_17
    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    const/16 v7, 0x8

    :try_start_1e
    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    const/16 v8, 0x9

    :try_start_1f
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v10, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_FAST_CAPTURING_REVIEW_PHOTOS_BURST:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    const/16 v9, 0xa

    :try_start_20
    sget-object v10, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    const/16 v10, 0xb

    :try_start_21
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->CONNECT_WIFI_SETTING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    const/16 v11, 0xc

    :try_start_22
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    const/16 v12, 0xd

    :try_start_23
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v14, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    const/16 v13, 0xe

    :try_start_24
    sget-object v14, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    const/16 v14, 0xf

    :try_start_25
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    const/16 v15, 0x10

    :try_start_26
    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v17, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_SAVE_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    const/16 v16, 0x11

    :try_start_27
    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v18, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    const/16 v17, 0x12

    :try_start_28
    sget-object v18, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v19, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v19

    aput v17, v18, v19
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    const/16 v18, 0x13

    :try_start_29
    sget-object v19, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v20, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v20

    aput v18, v19, v20
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    const/16 v19, 0x14

    :try_start_2a
    sget-object v20, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v21, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v21

    aput v19, v20, v21
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    const/16 v20, 0x15

    :try_start_2b
    sget-object v21, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v22, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v22

    aput v20, v21, v22
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    const/16 v21, 0x16

    :try_start_2c
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    aput v21, v22, v23
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v22, v23
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_INTERNAL_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v22, v23
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v22, v23
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v22, v23
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v22, v23
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v22, v23
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    .line 8768
    :catch_32
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    :try_start_33
    sget-object v23, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    sget-object v23, Lcom/sonyericsson/android/camera/NavigatorContents;->VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    .line 8290
    :catch_34
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    :try_start_35
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    .line 8110
    :catch_37
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_38
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    .line 5754
    :catch_3c
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    :try_start_3d
    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    .line 4956
    :catch_42
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    :try_start_43
    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_TIMEOUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v11, v15, v23
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v12, v15, v23
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v13, v15, v23
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v14, v15, v23
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v22, 0x10

    aput v22, v15, v23
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v16, v15, v23
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NIGHT_PORTRAIT_FLASH_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v17, v15, v23
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v18, v15, v23
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v19, v15, v23
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v20, v15, v23
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v21, v15, v23
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_TOUCH_FOCUS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v15, v23
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v15, v23
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v15, v23
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v15, v23
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v15, v23
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CLOSE_ALL_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v15, v23
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_INSTANT_VIEWER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1d

    aput v24, v15, v23
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1e

    aput v24, v15, v23
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1f

    aput v24, v15, v23
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS_LONG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x20

    aput v24, v15, v23
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x21

    aput v24, v15, v23
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x22

    aput v24, v15, v23
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x23

    aput v24, v15, v23
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x24

    aput v24, v15, v23
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x25

    aput v24, v15, v23
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x26

    aput v24, v15, v23
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GEO_TAG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x27

    aput v24, v15, v23
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GRID_LINE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x28

    aput v24, v15, v23
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x29

    aput v24, v15, v23
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2a

    aput v24, v15, v23
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2b

    aput v24, v15, v23
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2c

    aput v24, v15, v23
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2d

    aput v24, v15, v23
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2e

    aput v24, v15, v23
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2f

    aput v24, v15, v23
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x30

    aput v24, v15, v23
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    :try_start_73
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x31

    aput v24, v15, v23
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    :catch_73
    :try_start_74
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x32

    aput v24, v15, v23
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    :catch_74
    :try_start_75
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x33

    aput v24, v15, v23
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    :catch_75
    :try_start_76
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x34

    aput v24, v15, v23
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    :catch_76
    :try_start_77
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x35

    aput v24, v15, v23
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    :catch_77
    :try_start_78
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_HIDE_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x36

    aput v24, v15, v23
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    :catch_78
    :try_start_79
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x37

    aput v24, v15, v23
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    :catch_79
    :try_start_7a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x38

    aput v24, v15, v23
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x39

    aput v24, v15, v23
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3a

    aput v24, v15, v23
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_VIEWFINDER_DEBUGINFO_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3b

    aput v24, v15, v23
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3c

    aput v24, v15, v23
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_APPS_UI_MODE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3d

    aput v24, v15, v23
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_80
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TOUCHFOCUS_REJECT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3e

    aput v24, v15, v23
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    :catch_80
    :try_start_81
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3f

    aput v24, v15, v23
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    :catch_81
    :try_start_82
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x40

    aput v24, v15, v23
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    :catch_82
    :try_start_83
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_QR_WIFI_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x41

    aput v24, v15, v23
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    :catch_83
    :try_start_84
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x42

    aput v24, v15, v23
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    :catch_84
    :try_start_85
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_THERMAL_FLASH_OFF_AND_WARN_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x43

    aput v24, v15, v23
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    :catch_85
    :try_start_86
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_THERMAL_FLASH_OFF_AND_WARN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x44

    aput v24, v15, v23
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    :catch_86
    :try_start_87
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CANCEL_THERMAL_HINT_AND_ENABLE_FLASH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x45

    aput v24, v15, v23
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    :catch_87
    :try_start_88
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_QR_DETECTION_RESULT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x46

    aput v24, v15, v23
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_88

    :catch_88
    :try_start_89
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FORCED_CHANGE_NIGHT_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x47

    aput v24, v15, v23
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_89

    :catch_89
    :try_start_8a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FORCED_CHANGE_FLASH_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x48

    aput v24, v15, v23
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_8a

    .line 4761
    :catch_8a
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    :try_start_8b
    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_8b

    :catch_8b
    :try_start_8c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_90
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_90

    :catch_90
    :try_start_91
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_91

    :catch_91
    :try_start_92
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_92

    :catch_92
    :try_start_93
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_93

    :catch_93
    :try_start_94
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_94

    :catch_94
    :try_start_95
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_95

    :catch_95
    :try_start_96
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v11, v15, v23
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_96

    :catch_96
    :try_start_97
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v12, v15, v23
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_97

    .line 4705
    :catch_97
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    :try_start_98
    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_98

    :catch_98
    :try_start_99
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_99

    :catch_99
    :try_start_9a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_9a

    :catch_9a
    :try_start_9b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_a0
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_a0

    :catch_a0
    :try_start_a1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a2
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_a2

    .line 4067
    :catch_a2
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    :try_start_a3
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a4
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_a4

    .line 3386
    :catch_a4
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_a5
    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a6
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_a6

    :catch_a6
    :try_start_a7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a8
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_a8} :catch_a8

    .line 3369
    :catch_a8
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    :try_start_a9
    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_a9} :catch_a9

    :catch_a9
    :try_start_aa
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_ab
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_ab} :catch_ab

    :catch_ab
    :try_start_ac
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_ac} :catch_ac

    :catch_ac
    :try_start_ad
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_ad} :catch_ad

    .line 3130
    :catch_ad
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_ae
    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ae} :catch_ae

    :catch_ae
    :try_start_af
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_af} :catch_af

    :catch_af
    :try_start_b0
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b2
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_b2} :catch_b2

    :catch_b2
    :try_start_b3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b4
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_b5} :catch_b5

    :catch_b5
    :try_start_b6
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b8
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v11, v15, v23
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_b9} :catch_b9

    :catch_b9
    :try_start_ba
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v12, v11, v15
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_ba} :catch_ba

    :catch_ba
    :try_start_bb
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v13, v11, v12
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_bb} :catch_bb

    :catch_bb
    :try_start_bc
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v14, v11, v12
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_bc} :catch_bc

    :catch_bc
    :try_start_bd
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x10

    aput v13, v11, v12
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_bd} :catch_bd

    :catch_bd
    :try_start_be
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v16, v11, v12
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_be} :catch_be

    :catch_be
    :try_start_bf
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v17, v11, v12
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_c0
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v18, v11, v12
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c1
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v19, v11, v12
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_c1} :catch_c1

    :catch_c1
    :try_start_c2
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v20, v11, v12
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_c2} :catch_c2

    :catch_c2
    :try_start_c3
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v21, v11, v12
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_c3} :catch_c3

    :catch_c3
    :try_start_c4
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x17

    aput v13, v11, v12
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_c4} :catch_c4

    :catch_c4
    :try_start_c5
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x18

    aput v13, v11, v12
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_c5} :catch_c5

    :catch_c5
    :try_start_c6
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x19

    aput v13, v11, v12
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_c6} :catch_c6

    :catch_c6
    :try_start_c7
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1a

    aput v13, v11, v12
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_c7} :catch_c7

    :catch_c7
    :try_start_c8
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1b

    aput v13, v11, v12
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_c8} :catch_c8

    :catch_c8
    :try_start_c9
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1c

    aput v13, v11, v12
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_c9} :catch_c9

    :catch_c9
    :try_start_ca
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1d

    aput v13, v11, v12
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_ca} :catch_ca

    :catch_ca
    :try_start_cb
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1e

    aput v13, v11, v12
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_cb} :catch_cb

    :catch_cb
    :try_start_cc
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1f

    aput v13, v11, v12
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_cc} :catch_cc

    .line 2920
    :catch_cc
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_cd
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_cd} :catch_cd

    :catch_cd
    :try_start_ce
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_ce} :catch_ce

    :catch_ce
    :try_start_cf
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_cf} :catch_cf

    .line 2472
    :catch_cf
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    :try_start_d0
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_d0} :catch_d0

    :catch_d0
    :try_start_d1
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_d1} :catch_d1

    :catch_d1
    :try_start_d2
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_d2} :catch_d2

    :catch_d2
    :try_start_d3
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_d3} :catch_d3

    :catch_d3
    :try_start_d4
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_d4} :catch_d4

    .line 2367
    :catch_d4
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    :try_start_d5
    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_d5} :catch_d5

    :catch_d5
    :try_start_d6
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_d6} :catch_d6

    :catch_d6
    :try_start_d7
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_d7} :catch_d7

    :catch_d7
    :try_start_d8
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_d8} :catch_d8

    .line 1917
    :catch_d8
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_d9
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_d9} :catch_d9

    :catch_d9
    :try_start_da
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_da} :catch_da

    :catch_da
    :try_start_db
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_db} :catch_db

    :catch_db
    :try_start_dc
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_dc} :catch_dc

    :catch_dc
    :try_start_dd
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_dd} :catch_dd

    :catch_dd
    :try_start_de
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_de} :catch_de

    :catch_de
    :try_start_df
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_df} :catch_df

    :catch_df
    :try_start_e0
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v7, v11, v12
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_e0} :catch_e0

    :catch_e0
    :try_start_e1
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v8, v11, v12
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e1} :catch_e1

    :catch_e1
    :try_start_e2
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v9, v11, v12
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_e2} :catch_e2

    :catch_e2
    :try_start_e3
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v11

    aput v10, v9, v11
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_e3} :catch_e3

    .line 1155
    :catch_e3
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    :try_start_e4
    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e5
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_e5} :catch_e5

    :catch_e5
    :try_start_e6
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_e6} :catch_e6

    :catch_e6
    :try_start_e7
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_e7} :catch_e7

    .line 1117
    :catch_e7
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_e8
    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_e8} :catch_e8

    :catch_e8
    :try_start_e9
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_ea
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_ea} :catch_ea

    :catch_ea
    :try_start_eb
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_eb} :catch_eb

    :catch_eb
    :try_start_ec
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_ec} :catch_ec

    :catch_ec
    :try_start_ed
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_ed} :catch_ed

    :catch_ed
    :try_start_ee
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v6, v5, v9
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_ee} :catch_ee

    :catch_ee
    :try_start_ef
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v7, v5, v6
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_ef} :catch_ef

    :catch_ef
    :try_start_f0
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v8, v5, v6
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_f0} :catch_f0

    .line 725
    :catch_f0
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_f1
    sget-object v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_f1} :catch_f1

    :catch_f1
    :try_start_f2
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f3
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->EVERYONE_MODE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_f3} :catch_f3

    :catch_f3
    :try_start_f4
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_f4} :catch_f4

    :catch_f4
    :try_start_f5
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_f5} :catch_f5

    :catch_f5
    return-void
.end method
