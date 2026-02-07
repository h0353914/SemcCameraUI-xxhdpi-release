package com.sonyericsson.cameracommon.utility;

/* JADX INFO: loaded from: classes.dex */
public enum MeasurePerformance$PerformanceIds {
    ON_CREATE("[SEQ][START UP]"),
    ON_START("[START UP]"),
    ON_RESTART("[START UP]"),
    ON_RESUME("[SEQ][START UP]"),
    ON_PAUSE("[START UP]"),
    ON_STOP("[START UP]"),
    ON_DESTROY("[START UP]"),
    NOTIFY_STORE_COMPLETE(""),
    MSG_ON_STORE_CALLBACK_START(""),
    MSG_ON_STORE_CALLBACK_END(""),
    HANDLE_EVENT(""),
    SET_CONTENT_VIEWS(""),
    INFLATE_VIEWS("[TASK]"),
    STARTUP_TIME("[SEQ]"),
    ON_RESUME_TO_SURFACE_CHANGED("[SURFACE]"),
    SURFACE_CHANGED("[SURFACE]"),
    SURFACE_CHANGED_TO_LAUNCH("[SURFACE]"),
    RESUME_TO_LAUNCH("[SEQ]"),
    LAUNCH("[SEQ]"),
    LAUNCH_TO_DISPATCH_DRAW("[SEQ]"),
    OPEN_CAMERA_DEVICE_TASK("[TASK][DEVICE]"),
    SWITCH_CAMERA_DEVICE("[DEVICE]"),
    SETUP_CAMERA_DEVICE_TASK("[TASK]"),
    CREATE_EFFECT_RENDERER_PACK("[TASK]"),
    LAZY_INITIALIZATION_TASK("[TASK]"),
    SETTUP_RELATED_TO_SURFACE_SIZE("[TASK]"),
    STOT_TO_SHOT("[SHOT]"),
    STOT_TO_ON_PICT_TAKEN("[SHOT]"),
    RECORDING_START("[SHOT]"),
    RECORDING_STOP("[SHOT]"),
    STORE_DATA_INTO_SD_CARD(""),
    UPDATE_REMAIN("");

    String tag;

    MeasurePerformance$PerformanceIds(String str) {
        this.tag = str;
    }
}
