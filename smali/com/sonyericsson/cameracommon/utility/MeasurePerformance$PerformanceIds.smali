.class public final enum Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
.super Ljava/lang/Enum;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerformanceIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;


# instance fields
.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_CREATE"

    const-string v2, "[SEQ][START UP]"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_START"

    const-string v2, "[START UP]"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_RESTART"

    const-string v2, "[START UP]"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_RESUME"

    const-string v2, "[SEQ][START UP]"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 67
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_PAUSE"

    const-string v2, "[START UP]"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_STOP"

    const-string v2, "[START UP]"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_DESTROY"

    const-string v2, "[START UP]"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 74
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "NOTIFY_STORE_COMPLETE"

    const-string v2, ""

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 76
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "MSG_ON_STORE_CALLBACK_START"

    const-string v2, ""

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "MSG_ON_STORE_CALLBACK_END"

    const-string v2, ""

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 80
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "HANDLE_EVENT"

    const-string v2, ""

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SET_CONTENT_VIEWS"

    const-string v2, ""

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 85
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "INFLATE_VIEWS"

    const-string v2, "[TASK]"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 88
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STARTUP_TIME"

    const-string v2, "[SEQ]"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 90
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_RESUME_TO_SURFACE_CHANGED"

    const-string v2, "[SURFACE]"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 92
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SURFACE_CHANGED"

    const-string v2, "[SURFACE]"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 94
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SURFACE_CHANGED_TO_LAUNCH"

    const-string v2, "[SURFACE]"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 96
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "RESUME_TO_LAUNCH"

    const-string v2, "[SEQ]"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 98
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "LAUNCH"

    const-string v2, "[SEQ]"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 100
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "LAUNCH_TO_DISPATCH_DRAW"

    const-string v2, "[SEQ]"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 102
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "OPEN_CAMERA_DEVICE_TASK"

    const-string v2, "[TASK][DEVICE]"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 104
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SWITCH_CAMERA_DEVICE"

    const-string v2, "[DEVICE]"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SETUP_CAMERA_DEVICE_TASK"

    const-string v2, "[TASK]"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "CREATE_EFFECT_RENDERER_PACK"

    const-string v2, "[TASK]"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 110
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "LAZY_INITIALIZATION_TASK"

    const-string v2, "[TASK]"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 112
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SETTUP_RELATED_TO_SURFACE_SIZE"

    const-string v2, "[TASK]"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 115
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STOT_TO_SHOT"

    const-string v2, "[SHOT]"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 117
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STOT_TO_ON_PICT_TAKEN"

    const-string v2, "[SHOT]"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "RECORDING_START"

    const-string v2, "[SHOT]"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 121
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "RECORDING_STOP"

    const-string v2, "[SHOT]"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 124
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STORE_DATA_INTO_SD_CARD"

    const-string v2, ""

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 126
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "UPDATE_REMAIN"

    const-string v2, ""

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v0, 0x20

    .line 57
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .locals 1

    .line 57
    const-class v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .locals 1

    .line 57
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object v0
.end method
