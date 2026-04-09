.class public final enum Lcom/sonyericsson/android/camera/util/PerfLog;
.super Ljava/lang/Enum;
.source "PerfLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/util/PerfLog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum APPLICATION_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BIND_SYSMON_SERVICE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BURST_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BYPASSCAMERA_ON_IMAGE_AVAILABLE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BYPASSCAMERA_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BYPASSCAMERA_ON_SNAPSHOT_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BYPASSCAMERA_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum CAPTURE_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum CREATE_CAPTURE_SESSION_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum EVF_REQUEST_RESIZE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum FAST_PRE_CAPTURE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum FAST_PRE_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum FAST_STORE_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final IS_ENABLE:Z

.field public static final enum LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum MODE_CHANGE_SHOW_SURFACE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum MODE_CHANGE_TASK_END:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum MODE_CHANGE_TASK_START:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum ON_CONFIGURED:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum OPEN_BYPASS_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum OPEN_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum PLATFORM_CAPABILITY_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum RESIZE_EVF:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum START_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum STATE_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum STORAGE_MANAGER_SETUP:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum SURFACE_CHANGED:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum SURFACE_CREATED:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum SURFACE_DESTROYED:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum SWIPE_ANIMATION_END:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum SWIPE_ANIMATION_START:Lcom/sonyericsson/android/camera/util/PerfLog;

.field private static final TAG:Ljava/lang/String; = "CAMPERF"

.field public static final enum TASK_INFLATE:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum THUMBNAIL_SHOW:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/android/camera/util/PerfLog;

.field public static final enum VIEWFINDER_SETUP_HEADUP_DISPLAY:Lcom/sonyericsson/android/camera/util/PerfLog;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "APPLICATION_ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "APPLICATION_PRELOAD_THREAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "ACTIVITY_ON_CREATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "ACTIVITY_ON_RESUME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "ACTIVITY_ON_PAUSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "ACTIVITY_ON_STOP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "ACTIVITY_ON_DESTROY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "OPEN_BYPASS_CAMERA_TASK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_BYPASS_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "OPEN_CAMERA_TASK"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "CREATE_CAPTURE_SESSION_TASK"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->CREATE_CAPTURE_SESSION_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "ON_CONFIGURED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ON_CONFIGURED:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "SET_REPEATING_REQUEST_TASK"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "START_PREVIEW"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "PLATFORM_CAPABILITY_PREPARE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PLATFORM_CAPABILITY_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "RESIZE_EVF"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->RESIZE_EVF:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "SURFACE_CREATED"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->SURFACE_CREATED:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "SURFACE_CHANGED"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->SURFACE_CHANGED:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "SURFACE_DESTROYED"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->SURFACE_DESTROYED:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "EVF_REQUEST_RESIZE"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->EVF_REQUEST_RESIZE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BIND_SYSMON_SERVICE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "LOAD_USER_SETTING_CURRENT"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "LOAD_USER_SETTING_ALL"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "STATE_RESUME"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STATE_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "VIEWFINDER_SETUP_HEADUP_DISPLAY"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_SETUP_HEADUP_DISPLAY:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "VIEWFINDER_FIRST_DRAW"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "STORAGE_MANAGER_SETUP"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "DCF_PATH_BUILDER_SCAN"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "SWIPE_ANIMATION_START"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "SWIPE_ANIMATION_END"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_END:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "MODE_CHANGE_TASK_START"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "MODE_CHANGE_TASK_END"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_END:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "MODE_CHANGE_SHOW_SURFACE"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_SHOW_SURFACE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "START_REC"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->START_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "STOP_REC"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "CAPTURE_BUTTON_TAP"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->CAPTURE_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "THUMBNAIL_SHOW"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->THUMBNAIL_SHOW:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "STORE_COMPLETE"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BURST_STORE_COMPLETE"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BURST_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 72
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "FAST_CAMERA_BUTTON_INTENT_RECEIVED"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "FAST_PRE_SCAN"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "FAST_PRE_CAPTURE"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_CAPTURE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "FAST_STORE_DONE"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_STORE_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BYPASSCAMERA_PREPARE"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BYPASSCAMERA_REQUEST_SNAPSHOT"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_SHUTTER_DONE"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 80
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_SNAPSHOT_DONE"

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_SNAPSHOT_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_IMAGE_AVAILABLE"

    const/16 v15, 0x2e

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_IMAGE_AVAILABLE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_STORE_COMPLETE"

    const/16 v15, 0x2f

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 84
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "TASK_VIEW_FINDER_INITIALIZATION"

    const/16 v15, 0x30

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "TASK_INFLATE"

    const/16 v15, 0x31

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "PREPARE_IMAGE_READER_VIDEO_THUMBNAIL"

    const/16 v15, 0x32

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v1, "PREPARE_IMAGE_READER_STREAMING"

    const/16 v15, 0x33

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/util/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v0, 0x34

    .line 20
    new-array v0, v0, [Lcom/sonyericsson/android/camera/util/PerfLog;

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_BYPASS_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->OPEN_CAMERA_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->CREATE_CAPTURE_SESSION_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ON_CONFIGURED:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->PLATFORM_CAPABILITY_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->RESIZE_EVF:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SURFACE_CREATED:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SURFACE_CHANGED:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SURFACE_DESTROYED:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->EVF_REQUEST_RESIZE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->STATE_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_SETUP_HEADUP_DISPLAY:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_END:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_TASK_END:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->MODE_CHANGE_SHOW_SURFACE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->START_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->STOP_REC:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->CAPTURE_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->THUMBNAIL_SHOW:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BURST_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_CAPTURE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_STORE_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_PREPARE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_SNAPSHOT_DONE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_IMAGE_AVAILABLE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->$VALUES:[Lcom/sonyericsson/android/camera/util/PerfLog;

    const-string v0, "CAMPERF"

    .line 94
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/PerfLog;->mText:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x7b

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "CAMPERF"

    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/PerfLog;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/PerfLog;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/PerfLog;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->$VALUES:[Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/PerfLog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/PerfLog;

    return-object v0
.end method


# virtual methods
.method public begin()V
    .locals 2

    .line 103
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/PerfLog;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .line 109
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/PerfLog;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public transit()V
    .locals 1

    .line 115
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/PerfLog;->mText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
