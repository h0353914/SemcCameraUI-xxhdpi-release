.class synthetic Lcom/sonyericsson/android/camera/device/BypassCameraController$3;
.super Ljava/lang/Object;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

.field static final synthetic $SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1163
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture:[I

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1061
    :catch_1
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 940
    :catch_6
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    :try_start_7
    sget-object v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ALREADY_DONE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-virtual {v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    sget-object v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ON_REQUEST:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-virtual {v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->INVALID:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
