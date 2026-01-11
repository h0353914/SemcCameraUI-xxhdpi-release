.class synthetic Lcom/sonyericsson/android/camera/device/CameraController$22;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 3541
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_QUICK_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 2955
    :catch_6
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    :try_start_7
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_EVICTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 2793
    :catch_b
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    :try_start_c
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 1926
    :catch_e
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    :try_start_f
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->EIGHTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
