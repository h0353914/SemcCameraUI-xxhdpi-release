.class final enum Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;
.super Ljava/lang/Enum;
.source "ShutterFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

.field public static final enum DIVIDE_SOUND:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

.field public static final enum DIVIDE_SOUND_LONG:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

.field public static final enum ON_CAPTURE_REQUEST:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

.field public static final enum ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;


# instance fields
.field private final eventOnCaptureRequest:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

.field private final eventOnShutterDone:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

.field private final isContinuousShotAcceptable:Z

.field private final soundOnCaptureRequest:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

.field private final soundOnShutterDone:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;
    .locals 4

    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_CAPTURE_REQUEST:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    sget-object v3, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND_LONG:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgeteventOnCaptureRequest(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->eventOnCaptureRequest:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventOnShutterDone(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->eventOnShutterDone:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisContinuousShotAcceptable(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->isContinuousShotAcceptable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsoundOnCaptureRequest(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->soundOnCaptureRequest:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsoundOnShutterDone(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->soundOnShutterDone:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 81
    new-instance v8, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v7, 0x1

    const-string v1, "ON_SHUTTER_DONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Z)V

    sput-object v8, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    sget-object v12, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    sget-object v14, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v10, "ON_CAPTURE_REQUEST"

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_CAPTURE_REQUEST:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_FIRST_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_SECOND_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v8, 0x0

    const-string v2, "DIVIDE_SOUND"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    sget-object v12, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_FIRST_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    sget-object v13, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_SECOND_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    sget-object v14, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS_LONG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/16 v16, 0x0

    const-string v10, "DIVIDE_SOUND_LONG"

    const/4 v11, 0x3

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND_LONG:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 80
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->$values()[Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;",
            "Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;",
            "Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;",
            "Z)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->soundOnCaptureRequest:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 129
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->soundOnShutterDone:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 130
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->eventOnCaptureRequest:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 131
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->eventOnShutterDone:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    .line 132
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->isContinuousShotAcceptable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;
    .locals 1

    .line 80
    const-class v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;
    .locals 1

    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    return-object v0
.end method
