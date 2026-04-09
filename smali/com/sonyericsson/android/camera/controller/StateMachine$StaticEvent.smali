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

.field public static final enum EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 869
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_PHOTO_STACK_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 870
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 871
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_SCENE_MODE_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 872
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_FACE_DETECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 873
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_OBJECT_TRACKED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 874
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_ORIENTATION_CHANGED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 875
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_LAZY_INITIALIZATION_TASK_RUN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 876
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_OBJECT_TRACKING_LOST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 877
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 878
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    .line 879
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_PREVIEW_STARTED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/16 v0, 0xb

    .line 868
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v12

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

    .line 868
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;
    .locals 1

    .line 868
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;
    .locals 1

    .line 868
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    return-object v0
.end method
