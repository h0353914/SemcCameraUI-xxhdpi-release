.class public final Lcom/sonyericsson/android/camera/device/SomcCameraDeviceInfo;
.super Ljava/lang/Object;
.source "SomcCameraDeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllCaptureRequestKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_RGBCIR_MEASURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_TOF_MEASURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_GM:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AI_CLEAR_FACE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_POWER_SAVE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_FUSION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DEBUG_EXIF:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISABLE_MOTION_FOR_NIGHT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_NIGHT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SENSOR_SENSITIVITY_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SENSOR_EXPOSURE_TIME_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_DUAL_CAMERA_TARGET_STREAM_SOURCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_DUAL_CAMERA_SUB_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_BURST_SHOT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_MULTI_CAPTURING_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SESSION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_FLASH_BEFORE_COUNTDOWN:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISABLE_BG_PROCESS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAllCaptureResultKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_RGBCIR_MEASURE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_TOF_MEASURE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_SCENE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_RGBCIR_MEASURE_COLOR:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_TOF_MEASURE_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_AUTONIGHT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AE_REGION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_GM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_POWER_SAVE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_FUSION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_FUSION_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_PREVIEW_OUTPUT_STREAM_SOURCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_STILL_OUTPUT_STREAM_SOURCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_VIDEO_OUTPUT_STREAM_SOURCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_SENSOR_SENSITIVITY_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_SENSOR_EXPOSURE_TIME_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_SENSOR_ILLUMINANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_TARGET_STREAM_SOURCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_SUB_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_SUB_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_SUB_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_ROTATION_ANGLE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_CENTER_SHIFT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_EFFECTIVE_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_DUAL_CAMERA_DISTORTION_PARAMETERS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_THERMAL_TEMPERATURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_STRENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_STATUS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->COM_SONYMOBILE_CONTROL_NEXTCAPTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getAllCharacteristicsKeyNames()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_OBJECT_TRACKING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_FACE_SMILE_SCORES_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_SCENE_DETECT_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_TRACKING_FOCUS_DURING_LOCK:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_RGBCIR_MEASURE_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_TOF_MEASURE_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_MAX_TOF_AREA_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AE_AVAILABLE_REGION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AF_AVAILABLE_REGION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_GM_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_STILL_SKIN_SMOOTH_LEVEL_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_STILL_HDR_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_POWER_SAVE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_MIN_EXPOSURE_TIME_LIMIT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_DISTORTION_CORRECTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_FUSION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_FLASH_DISPLAY_FLASH_LIGHT_SHIELDING_AREA:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_FLASH_DISPLAY_FLASH_COLOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_AVAILABLE_STILL_HDR_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_AVAILABLE_MANUAL_ISO_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_PREFERRED_STILL_PREVIEW_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_PREFERRED_VIDEO_PREVIEW_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_PREFERRED_HDR_VIDEO_PREVIEW_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_WIDE_ZOOM_TARGET_RATIO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_AVAILABLE_FUSION_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_FUSION_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_DUAL_CAMERA_MODULE_SHIFT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_DUAL_CAMERA_SUB_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_DUAL_CAMERA_SUB_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_DUAL_CAMERA_DISTORTION_PARAM_POINTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_DUAL_CAMERA_AVAILABLE_TARGET_STREAM_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_DUAL_CAMERA_AVAILABLE_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_INFO_SENSOR_NAME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->HFR_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
