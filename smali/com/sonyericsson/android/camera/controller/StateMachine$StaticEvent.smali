.class public final enum Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StaticEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_ISO_UPTATED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;
    .locals 17

    .line 995
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ISO_UPTATED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    filled-new-array/range {v0 .. v16}, [Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 996
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_PHOTO_STACK_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 997
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 998
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_SCENE_MODE_CHANGED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 999
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_AUTO_FLASH_CHANGED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1000
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_AUTO_HDR_CHANGED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1001
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_AUTO_NIGHT_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1002
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_FACE_DETECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1003
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_OBJECT_TRACKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1004
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_ORIENTATION_CHANGED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1005
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_LAZY_INITIALIZATION_TASK_RUN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1006
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_OBJECT_TRACKING_LOST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1007
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1008
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_ISO_UPTATED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ISO_UPTATED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1009
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_RECORDING_STARTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1010
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_PREVIEW_STARTED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1011
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_WIFI_RESULT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 1012
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_START_QR_SCANNING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 995
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->$values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 995
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;
    .locals 1

    .line 995
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;
    .locals 1

    .line 995
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    return-object v0
.end method
